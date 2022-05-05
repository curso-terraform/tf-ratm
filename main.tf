terraform {
  required_providers {
    aws = {
      source = "hasicorp/aws"
      version = "4.12.1"
    }
  }
}


# Create s3 to remote backend
resource "aws_s3_bucket" "tf-remote-s3" {
  bucket = "tf-remote-state"

  tags = var.aws_tags
}

resource "aws_s3_bucket_acl" "tf-remote-act" {
  bucket = aws_s3_bucket.tf-remote-s3.id
  acl = var.s3_devopsbootcamp_acl
}

