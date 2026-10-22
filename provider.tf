provider "aws" {
  region = "ap-south-1"

}
terraform {
  backend "s3" {
    bucket       = "dilip-terraform-state"
    key          = "terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}
