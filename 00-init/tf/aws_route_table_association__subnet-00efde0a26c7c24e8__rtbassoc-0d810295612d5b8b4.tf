# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_route_table_association.subnet-00efde0a26c7c24e8__rtbassoc-0d810295612d5b8b4:
resource "aws_route_table_association" "subnet-00efde0a26c7c24e8__rtbassoc-0d810295612d5b8b4" {
  route_table_id = aws_route_table.rtb-074aa48c67f043297.id
  subnet_id      = aws_subnet.subnet-00efde0a26c7c24e8.id
}
