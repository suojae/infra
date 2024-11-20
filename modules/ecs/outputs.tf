output "ecs_cluster_id" {
  value = aws_ecs_cluster.this.id
}

output "ecs_service_name" {
  value = aws_ecs_service.this.name
}

output "ecs_task_definition_arn" {
  value = aws_ecs_task_definition.task_definition.arn
}

output "ecs_security_group_id" {
  value = aws_security_group.this.id
}

output "ecs_task_execution_role_arn" {
  value = aws_iam_role.task_execution_role.arn
}
