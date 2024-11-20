variable "subnet_id" {
  description = "Subnet ID for the NAT Gateway"
  type        = string
}

variable "natgw_name" {
  description = "Name of the NAT Gateway"
  type        = string
}

variable "eip_name" {
  description = "Name of the Elastic IP"
  type        = string
}
