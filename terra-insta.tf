terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_instance" "terra_insta" {
  ami  = "ami-08116b9957a259459"
   instance_type = "t2.micro"
   
   tags = {
     Name = "Terraform_Demo"
   }
 }
