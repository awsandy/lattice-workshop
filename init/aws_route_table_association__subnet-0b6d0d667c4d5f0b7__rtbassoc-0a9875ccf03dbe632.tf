# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_route_table_association.subnet-0b6d0d667c4d5f0b7__rtbassoc-0a9875ccf03dbe632:
resource "aws_route_table_association" "subnet-0b6d0d667c4d5f0b7__rtbassoc-0a9875ccf03dbe632" {
  route_table_id = aws_route_table.rtb-074aa48c67f043297.id
  subnet_id      = aws_subnet.subnet-0b6d0d667c4d5f0b7.id
}