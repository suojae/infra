variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "route_table_name" {
  description = "Name of the route table"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to associate with the route table"
  type        = string
}

variable "destination_cidr_block" {
  description = "Destination CIDR block for the route"
  type        = string
}

variable "gateway_id" {
  description = "Gateway ID for the route (Internet Gateway or Virtual Private Gateway)"
  type        = string
  default     = null
}

variable "nat_gateway_id" {
  description = "NAT Gateway ID for the route"
  type        = string
  default     = null
}
