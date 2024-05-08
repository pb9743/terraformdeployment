provider "aws" {
  region = "us-east-1"  # Replace with your desired region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "web_server" {
  ami           = "ami-07caf09b362be10b8"  # Replace with desired AMI ID
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform-Deployed-Webserver"
  }
}
