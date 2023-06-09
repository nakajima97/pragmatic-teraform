resource "aws_cloudwatch_log_group" "for_ecs" {
  name = "/ecs/example"
  retention_in_days = 1
}

resource "aws_cloudwatch_log_group" "for_ecs_scheduled_tasks" {
  name = "/ecs-scheduled-tasks/example"
  retention_in_days = 1
}

resource "aws_cloudwatch_log_group" "operation" {
  name = "/operation"
  retention_in_days = 1
}