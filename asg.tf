resource "aws_autoscaling_group" "app" {
  name = "terraform-devops-asg"
  max_size = 2
  min_size = 1
  desired_capacity = 1
  vpc_zone_identifier = [aws_subnet.private_1.id, aws_subnet.private_2.id]

target_group_arns = [aws_lb_target_group.app.arn]
  launch_template {

    id      = aws_launch_template.app.id
    version = "$Latest"

  }

  tag  {
    key = "Name"
    value = "terraform-devops-app"
    propagate_at_launch = true
}
}
