resource "aws_placement_group" "test" {
  name     = "test"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "bar" {
  name                      = "foobar3-terraform-test"
  max_size                  = 5
  min_size                  = 1
  launch_configuration      = aws_launch_configuration.server.name
  vpc_zone_identifier       = ["vpc-0db2e99b93ecd89c7"]
}