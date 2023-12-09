# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_lambda_permission.r_vpc-lattice-access-for-tg-0db3a282d7c581867:
resource "aws_lambda_permission" "r_vpc-lattice-access-for-tg-0db3a282d7c581867" {
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.LatticeReservationLambda.arn
  principal     = "vpc-lattice.amazonaws.com"
  source_arn    = format("arn:aws:vpc-lattice:eu-west-1:%s:targetgroup/tg-0db3a282d7c581867",data.aws_caller_identity.current.account_id)
  statement_id  = "vpc-lattice-access-for-tg-0db3a282d7c581867"
}
