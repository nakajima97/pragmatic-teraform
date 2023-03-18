resource "aws_cloudwatch_event_rule" "example_batch" {
  name = "example-batch"
  description = "とても重要なバッチです"
  schedule_expression = "cron(*/2 * * * ? *)"
}