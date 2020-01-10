# Terraform code for module


variable "name" {
  type = string
  description = "The name of the VPC"
}

variable "cidr" {
  type = string
  description = "The CIDR of the VPC"
}


variable "public_subnet" {
  type = string
  description = "The public subnet to create"
}

variable "enable_dns_hostname" {
  type = bool
  description = "Should be true if you want to use private DNS within the VPC"
  default = true
}

variable "enable_dns_support" {
  type = bool
  description = "Should be true if you want to use private DNS within your VPC"
  default = true
}


variable "map_public_ip_on_launch" {
  description = "Should be false if you do not want to auto-assign public IP on launch"
  default     = true
  type        = bool
}
