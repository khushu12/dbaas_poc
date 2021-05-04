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
  access_key = "AKIAW24ATHAQTRZ42KO3"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

  tags = {
    Name ="ExampleDbaasInstance"
  }
}

