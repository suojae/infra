variable "cluster_id" {
  description = "Identifier for the Redis cluster"
  type        = string
}

variable "node_type" {
  description = "Instance type for Redis"
  type        = string
}

variable "port" {
  description = "Port for Redis"
  type        = number
}

variable "vpc_id" {
  description = "VPC ID for Redis cluster"
  type        = string
}

variable "subnets" {
  description = "List of subnet IDs for Redis"
  type        = list(string)
}

variable "allowed_security_groups" {
  description = "Security groups allowed to access Redis"
  type        = list(string)
}
