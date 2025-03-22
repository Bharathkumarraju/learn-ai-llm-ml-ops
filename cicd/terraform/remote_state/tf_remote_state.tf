provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bharath_tf_state_store" {
  bucket = "bkraajus-test-terraform-remote-state"

  # Prevent Accedental Delete of this bucket
  lifecycle {
    prevent_destroy = true
  }
  # Enables versioning
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}


output "bharath_s3_backend_arn" {
  value       = aws_s3_bucket.bharath_tf_state_store.arn
  description = "The S3 Bucket ARN"
}

