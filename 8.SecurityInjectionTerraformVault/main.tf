# NOT WORKING - Explore yourself

# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}

provider "valut" {
  auth_login {
    path = auth / userpass / login / var.username
    parameters = {
      password = var.password
    }
  }
}

data "vault_generic_secret" "authtoken" {
  /* path = var.path */
  /* path = "secreat/authtoken" */
}

/* 
data.dbuser.data["value"]
data.dbpassword.data["value"] */

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
