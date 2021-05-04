variable "ami" {
  type = map

  default = {
    "us-east-1" = "ami-08d70e59c07c61a3a"
    "us-west-1" = "ami-08d70e59c07c61a3a"
  }
}

variable "instance_count" {
  default = "2"
}

variable "instance_tags" {
  type = list
  default = ["Terraform-1", "Terraform-2"]
}

variable "instance_type" {
  default = "t2.nano"
}

variable "aws_region" {
  default = "us-east-1"
}
