provider "aws" {
    region = "us-east-1"  
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket2234493"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
