# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_security_group.sg-03d872da0ef11f465:
resource "aws_security_group" "sg-03d872da0ef11f465" {
  description = "Allow all for workshop"
  vpc_id      = aws_vpc.vpc-0552cbf8549150e66.id
  name = "clients-sg"
  tags = {
    Name = "clients-sg"
  }
}