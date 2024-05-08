provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-07caf09b362be10b8"  # Replace with desired AMI ID
  instance_type = "t2.micro"
  iam_instance_profile = aws_iam_instance_profile.ec2_launch_profile.arn
  tags = {
    Name = "Terraform-Deployed-Webserver"
  }
}
