provider "aws" {
region = "us-west-2"
}

resource "aws_instance" "example" {
ami = "ami-0b2b4f610e654d9ac"
instance_type = "t2.micro"

tags = {
Name = "bala"
}
}
