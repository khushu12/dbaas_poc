terraform {
 backend "remote" {
   organization = "example-org-c47cbc"
   workspaces {
     name = "Dbaas"
   }
 }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}


provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  count         = var.instance_count
  ami           = lookup(var.ami,var.aws_region)
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-${count.index + 1}-${var.aws_region}"
    Batch = "5AM"
  }
}

