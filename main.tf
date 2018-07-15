terraform {
     required_version = "> 0.8.0"
  }
  variable "aws_acces_id" {
  type = "string"
  description = "Generated"
  }
    variable "aws_secret_key" {
    type="string"
   description= "Generated"
  }             
  provider "aws" {
     access_key = "${var.aws_access_id}"
       secret_key = "${var.aws_secret_key}"
     region = "${var.region}"
     version = "~> 1.8"
  }
  resource "aws_instance" "web-server" {
 ami= "${var.web-server_ami}"
     key_name = "${var.web-server_key_name}"
     instance_type = "${var.web-server_aws_instance_type}"
     availability-zone = "${var.availability_zone}"
     tags {
              Name = "${var.web-server_name}"
     } 
  }