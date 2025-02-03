provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "first-server" {
  ami           = "ami-0a897ba00eaed7398"
  instance_type = "t2.micro"

  tags = {
    Name = "FirstWeb"
  }
}