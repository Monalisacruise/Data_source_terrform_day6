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
