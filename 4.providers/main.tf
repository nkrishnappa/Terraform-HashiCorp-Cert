# file 
# 4. Provider/main.tf

provider "aws" {
    region = "us-east-1"
    /* version = ">= 2.9.0" */
}

provider "aws" {
    region = "eu-west-1"
    alias = "landon"
}

resource "aws_instance" "usvpc" {
    cidr_block = "10.0.0.16"
}

resource "aws_instance" "lndvpc" {
    cidr_block = "10.0.0.16"
    provider = aws.landon
}