variable "aws_access_key" { }
variable "aws_secret_key" { }
variable "aws_region" { }
variable "amis" {
  description = "AMI by region"
  default {
     us-east-1 = "ami-0782e9ee97725263d"
	 us-east-2 = "ami-0782e9ee97725263d"
  }
}
variable "vpc_cidr" { }
variable "vpc_name" { }
variable "IGW_name" { }
variable "key_name" { }
variable "public_subnet1_cidr" { }
variable "public_subnet2_cidr" { }
variable "public_subnet3_cidr" { }
variable "private_subnet_cidr" { }
variable "public_subnet1_name" { }
variable "public_subnet2_name" { }
variable "public_subnet3_name" { }
variable "private_subnet_name" { }
variable "main_route_table" { }
variable "azs" {
    description = "Run ec2 Instances in the avaliabity zones"
	type = "list"
	default = { "us-east-1a", "us-east-1b" }
}
variable "environment" { default  = "dev" }
variable "instance_type" {
   type = "map"
   default = {
     dev = "t2.micro"
	 test = "t2.micro"
	 prod = "te.micro"
   }
}
