/* provider "aws" {
  region = "us-east-1"
} */

resource "aws_vpc" "myvpc1" {
  cidr_block = "10.0.0.0/16"
}

# terraform taint aws_vpc.myvpc2
# terraform untaint aws_vpc.myvpc2
resource "aws_vpc" "myvpc2" {
  cidr_block = "10.0.0.0/16"
}
