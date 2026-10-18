resource "aws_launch_template" "app" {
  name_prefix            = "terraform-devops-app-"
  image_id               = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  user_data = base64encode(
    <<-EOF
#!/bin/bash
# Update the package list and install Nginx 
apt-get update -y
apt-get install -y nginx
systemctl enable nginx
systemctl start nginx

echo "<h1>Welcome to the Terraform DevOps App!</h1>" > /var/www/html/index.html
EOF
  )
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name        = "terraform-devops-app"
      Environment = "dev"
    }


  }
}
