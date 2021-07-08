# file :
# 2. variables/main.tf
# Data Types

# String
variable "vpcname" {
    type = string
    default = "myvpc"
}

# Number
variable "sshport" {
    type = number
    default = 22
}

# Boolean
variable "enable" {
    default = true
}

# List
variable "mylist" {
    type = list(string)
    default = ["value1", "value2", "value3"]
}

# Maps
variable "mymap" {
    type = map
    default = {
        Key1 = "value1"
        Key2 = "value2"
    }
}

variable "mytuple" {
    type = tuple ([string, number, string])
    default = ["cat", 1 , "Dog"]
}

variable "myobject" {
    type = object ({name = string, port = list(number)})
    default = {
        name = "Nandisha"
        port = [22, 25, 80]
    }
}

/*
# object(...): a collection of named attributes that each have their own type.

variable "user_information" {
  type = object({
    name    = string
    address = string
  })
  sensitive = true
}

resource "some_resource" "a" {
  name    = var.user_information.name
  address = var.user_information.address
} */


# Input variable
variable "inputname" {
    type = string
    description = "Enter Name"
}

# output
output "myoutput" {
    value = aws_vpc.myvpc.id
}