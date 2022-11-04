
include {
    path = find_in_parent_folders()
}

inputs = {
    environment = "prod"
    aws_instance_type = "t3.micro"
}

terraform {
    source = "../../../terraform//web_server"
}