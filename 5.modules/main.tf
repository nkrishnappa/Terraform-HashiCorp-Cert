/* File : 5.Modules/main.tf */

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-01a6e31ac994bbc09"
  instance_type = "t2.micro"
  tags = {
    Name = "Web Server"
  }
}

module "dbserver" {
  source = "./db"
  dbname = "mydbserver"
}

output "dbprivateip" {
  value = module.dbserver.privateip
}