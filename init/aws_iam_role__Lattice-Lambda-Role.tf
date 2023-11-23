# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_iam_role.r-Lattice-Lambda-Role:
resource "aws_iam_role" "r-Lattice-Lambda-Role" {
  assume_role_policy = jsonencode(
    {
      Statement = [
        {
          Action = "sts:AssumeRole"
          Effect = "Allow"
          Principal = {
            Service = "lambda.amazonaws.com"
          }
        },
      ]
      Version = "2012-10-17"
    }
  )
  description           = "An execution role for a Lambda function launched by CloudFormation"
  force_detach_policies = false
  managed_policy_arns = [
    format("arn:aws:iam::%s:policy/Lattice-Lambda-Policy", data.aws_caller_identity.current.account_id),
  ]
  max_session_duration = 3600
  name                 = "Lattice-Lambda-Role"
  path                 = "/"
  tags                 = {}
  tags_all             = {}
}