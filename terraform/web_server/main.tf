resource "aws_launch_template" "server" {
  image_id = "ami-096800910c1b781ba"  # Ubuntu 22.04
  name = "${ var.environment }-web-server"
  tags = {
    "environment" = var.environment,
  }
}
