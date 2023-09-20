# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_lambda_permission.r_vpc-lattice-access-for-tg-0926b893015a065ef:
resource "aws_lambda_permission" "r_vpc-lattice-access-for-tg-0926b893015a065ef" {
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.LatticeReservationLambda.arn
  principal     = "vpc-lattice.amazonaws.com"
  source_arn    = "arn:aws:vpc-lattice:eu-west-1:566972129213:targetgroup/tg-0926b893015a065ef"
  statement_id  = "vpc-lattice-access-for-tg-0926b893015a065ef"
}
