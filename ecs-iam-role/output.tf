# export the ecs task execution role arn 
output "ecs_task_execution_role_arn" {
  value = aws_iam_policy.ecs_task_execution_policy.arn 
}