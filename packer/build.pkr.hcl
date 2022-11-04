packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  ami_name      = "learn-packer-linux-aws2"
  instance_type = "t2.micro"
  region        = "eu-west-1"
  source_ami    = "ami-096800910c1b781ba"
  ssh_username  = "ubuntu"
}

build {
  name = "learn-packer"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
  provisioner "ansible" {
    playbook_file   = "../ansible/playbook.yml"
    user            = "root"
  }
}