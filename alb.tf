resource "aws_lb" "app_lb" {
  name               = "terraform-devops-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = [aws_subnet.public_1.id, aws_subnet.public_2.id]
  tags = {
    Name        = "terraform-devops-alb"
    Environment = "dev"

  }
}
