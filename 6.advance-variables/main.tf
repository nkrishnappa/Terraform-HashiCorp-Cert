# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
}

# variables
variable "vpcname" {
    type = string
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
 
  tags = {
    Name = var.vpcname
  }
}