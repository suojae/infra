variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block of the subnet"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone"
  type        = string
}

variable "map_public_ip_on_launch" {
  description = "Whether to assign a public IP on launch"
  type        = bool
}

variable "tags" {
  description = "A map of tags"
  type = map(string)
}
