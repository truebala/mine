provider "aws" {
region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
tags = {
Name = "ajghai"
}
}
