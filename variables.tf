# Terraform code for module


variable "region" {
  type = string
  description = "The AWS region."
}

variable "team" {
  type = string
  description = "Team that is using this resource"
  default = "DevOps"
}

variable "environment" {
  type = string
  description = "The name of our environment, i.e. development."
  default = "development"
}

variable "key_name" {
  type = string
  description = "The AWS key pair to use for resources."
  default = "development"
}

variable "vpc_cidr" {
  type = string
  description = "The CIDR of the VPC."
}

variable "public_subnets" {
  type = list(string)
  default     = []
  description = "The list of public subnets to populate."
}

variable "private_subnets" {
  type = list(string)
  default     = []
  description = "The list of private subnets to populate."
}

variable "ami" {
  type = map(string)
  default = {
    "us-east-1" = "ami-f652979b"
    "us-west-1" = "ami-7c4b331c"
    "us-east-2" = "ami-0823f3f7bb503be4d"
  }

  description = "The AMIs to use for web and app instances."
}

variable "instance_type" {
  type = string
  default     = "t2.micro"
  description = "The instance type to launch "
}

variable "bastion_instance_type" {
  type = string
  default     = "t2.micro"
  description = "The bastion host instance type."
}

variable "bastion_ami" {
  type = map(string)
  default = {
    "us-east-1" = "ami-f652979b"
    "us-west-1" = "ami-7c4b331c"
    "us-east-2" = "ami-0823f3f7bb503be4d"
  }

  description = "The bastion host AMIs."
}

variable "enable_dns_hostnames" {
  type = bool
  description = "Should be true if you want to use private DNS within the VPC"
  default     = true
}

variable "enable_dns_support" {
  type = bool
  description = "Should be true if you want to use private DNS within the VPC"
  default     = true
}

variable "map_public_ip_on_launch" {
  type = bool
  description = "Should be false if you do not want to auto-assign public IP on launch"
  default     = true
}

variable "zone" {
  type = list(string)
  description = "Setting the zone for the subnet"
  default = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

