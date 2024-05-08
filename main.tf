provider "aws" {
  region = "us-east-1"  # Replace with your desired region
  access_key_id = var.aws_access_key_id
  secret_access_key = var.aws_secret_access_key
}

resource "aws_instance" "web_server" {
  ami           = "ami-07caf09b362be10b8"  # Replace with desired AMI ID
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform-Deployed-Webserver"
  }
}
