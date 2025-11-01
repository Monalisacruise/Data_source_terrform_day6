provider "aws" {
region = var.aws_region
}
 
data "aws_vpc" "selected" {
id = var.vpc_id
}
 
resource "aws_subnet" "example" {
vpc_id = data.aws_vpc.selected.id
availability_zone = "us-east-1a"
cidr_block = cidrsubnet(data.aws_vpc.selected.cidr_block, 4, 1)
 
tags = {
Name = "Example Subnet"
}
}

variable "aws_region" {
description = "AWS region to deploy resources"
type = string
default = "eu-north-1"
}
 
 
variable "vpc_id" {
  description = "ID of the existing VPC to use"
  type        = string
default = "vpc-0be8082d79e01fb79"
}
 
 
variable "vpc_cidr" {
description  = "CIDR block for VPC"
type  = string
default = "10.0.0.0/16"
}
 
variable "vpc_name" {
description  = "Name of the VPC"
type = string
default = "Terraform-VPC"
}
 
