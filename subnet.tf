resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = {
    Name        = "terraform_devops_public_1"
    Environment = "dev"
    Tier        = "Public"
  }
}
resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true
  tags = {
    Name        = "terraform_devops_public_2"
    Environment = "dev"
    Tier        = "Public"
  }
}
resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.11.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    Name        = "terraform_devops_private_1"
    Environment = "dev"
    Tier        = "Private"

  }

}

resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.12.0/24"
  availability_zone = "ap-south-1b"
  tags = {
    Name        = "terraform_devops_private_2"
    Environment = "dev"
    Tier        = "Private"

  }

}
