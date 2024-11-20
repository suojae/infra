variable "cidr_block" {
  description = "VPC CIDR 블록"
  type        = string
}

variable "tags" {
  description = "태그 맵"
  type = map(string)
}
