terraform {
  backend "s3" {
    bucket = "nicolas-laborda-terraform-tf-state"
    key = "tf-indra/terraform-tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-locking"
    encrypt = true
  }
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = " ~> 3.0"
    }
  }
}
provider "aws" {
    region = "us-east-1"
  
}

resource "aws_s3_bucket" "terraform_state" {
    bucket = "nicolas-laborda-terraform-tf-state"
    force_destroy = true
    versioning {
      enabled = true
    }
  
}