# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_security_group.sg-067dfe4dec422ce60:
resource "aws_security_group" "sg-067dfe4dec422ce60" {
  description = "Allow all for workshop"
  tags        = {}
  tags_all    = {}
  vpc_id      = aws_vpc.vpc-06977ec8dcb8f6e81.id
}
