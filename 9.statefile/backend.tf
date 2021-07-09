# File - 9.statefile/backend.tf

terraform {
    backend "s3" {
        bucket = "terraform-s3-bucket-nk"
        key = "state/terraform.tfstate"
        region = "us-east-1"
    }
}