# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_security_group_rule.sg-067dfe4dec422ce60_ingress_1:
resource "aws_security_group_rule" "sg-067dfe4dec422ce60_ingress_1" {
  cidr_blocks = [
    "0.0.0.0/0",
  ]
  description       = "Allow Lattice"
  from_port         = 22
  prefix_list_ids   = []
  protocol          = "tcp"
  security_group_id = aws_security_group.sg-067dfe4dec422ce60.id
  to_port           = 22
  type              = "ingress"
}