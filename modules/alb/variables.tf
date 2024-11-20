variable "name" {
  description = "ALB 이름"
  type        = string
}

variable "subnets" {
  description = "서브넷 ID 리스트"
  type = list(string)
}

variable "security_group_id" {
  description = "보안 그룹 ID"
  type        = string
}

variable "certificate_arn" {
  description = "SSL 인증서 ARN"
  type        = string
}

variable "target_port" {
  description = "타겟 포트"
  type        = number
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "tags" {
  description = "태그 맵"
  type = map(string)
}
