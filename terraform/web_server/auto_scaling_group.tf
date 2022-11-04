resource "aws_placement_group" "web_server" {
  name     = "${var.environment}-web_server"
  strategy = "cluster"
  tags = {
    "environment" = var.environment,
  }
}

resource "aws_autoscaling_group" "web_server" {
  name                 = "${var.environment}-web-server"
  max_size             = 5
  min_size             = 1
  launch_template {
    id      = aws_launch_template.server.id
    version = "$Latest"
  }
 vpc_zone_identifier  = ["subnet-14f8e852"]
}