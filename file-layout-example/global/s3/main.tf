provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-states-demo-ls"

  # prevent accidental bucket destruction
  lifecycle {
    prevent_destroy = true
  }

  # enable bucket versioning
  versioning {
    enabled = true
  }

  # enable server side encryption
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-up-and-running-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}

# backend block can't use variables but locals can be used within same module to retain DRY rule
terraform {
  backend "local" {

  }
}


