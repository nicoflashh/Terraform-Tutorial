terraform {
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
#S3 Bucket
resource "aws_s3_bucket" "terraform_state" {
    bucket = "nicolas-laborda-terraform-tf-state"
    force_destroy = true
    versioning{
        enabled = true
    }
}
resource "aws_s3_bucket_server_side_encryption_configuration" "ejemplo1" {
    bucket = aws_s3_bucket.terraform_state.bucket
    rule {
        apply_server_side_encryption_by_default {
          sse_algorithm = "AES256"
        }
    }
  
}
#DynamoDB
resource "aws_dynamodb_table" "terraform_locks" {
    name = "terraform-state-locking"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
}
