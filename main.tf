provider "aws" {
  region = "us-east-1"  # Replace with your desired region
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

resource "aws_instance" "web_server" {
  ami           = "ami-07caf09b362be10b8"  # Replace with desired AMI ID
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform-Deployed-Webserver"
  }
}
