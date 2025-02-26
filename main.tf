provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-04b4f1a9cf54c11d0" # Change to a valid AMI
  instance_type = "t2.nano"

  tags = {
    Name = "GitHubActionsEC2"
  }
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
