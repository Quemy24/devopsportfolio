provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "firstserver" {
  ami           = "ami-0a897ba00eaed7398"
  instance_type = "t2.micro"

  tags = {
    Name = "FirstWeb"
  }
}

resource "aws_default_vpc" "default" {
    tags = {
        Name = "Default VPC"
    }
}
