# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_security_group_rule.sg-03d872da0ef11f465_ingress_2:
resource "aws_security_group_rule" "sg-03d872da0ef11f465_ingress_2" {
  cidr_blocks = [
    "10.0.0.0/16",
  ]
  description       = "Allow Lattice"
  from_port         = 0
  prefix_list_ids   = []
  protocol          = "-1"
  security_group_id = aws_security_group.sg-03d872da0ef11f465.id
  to_port           = 0
  type              = "ingress"
}
