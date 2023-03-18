resource "aws_ssm_document" "sessoin_manager_run_shell" {
  name = "SSM-SessionManagerRunShell"
  document_type = "Session"
  document_format = "JSON"

  content = <<EOF
{
  "schemaersion": "1.0",
  "description": "Document to hold regional settings for Session Manager",
  "sessionType": "Standard_Stream",
  "inputs": {
    "s3BucketName": "${aws_s3_bucket.operation.id}",
    "cloudWatchLogGroupName": "${aws_cloudwatch_log_group.operation.name}"
  }
}
EOF
}