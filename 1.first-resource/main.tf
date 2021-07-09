# File :
# 1.first-resouce/main.tf

# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
 
  tags = {
    # string interpolation - .12 not needed
    /* Name = ${var.vpcname} */
    Name = var.vpcname
  }
}

/* 
var.vpcname
var.mylist[0]
var.mymap["Key1"]
var.inputname 
*/
