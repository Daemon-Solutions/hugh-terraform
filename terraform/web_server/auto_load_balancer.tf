# resource "aws_lb" "web_server" {
#   name               = "${var.environment}-web_server"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.lb_sg.id]
#   subnets            = [for subnet in aws_subnet.public : subnet.id]

#   tags = {
#     "environment" = var.environment,
#   }
# }