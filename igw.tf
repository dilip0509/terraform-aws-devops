resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name      = "terraform_devops_igw"
    Env       = "dev"
    ManagedBy = "Terraform"
  }
}
