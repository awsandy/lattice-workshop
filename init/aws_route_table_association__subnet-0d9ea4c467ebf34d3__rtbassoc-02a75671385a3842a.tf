# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_route_table_association.rates-pub2__rtbassoc-02a75671385a3842a:
resource "aws_route_table_association" "rates-pub2__rtbassoc-02a75671385a3842a" {
  route_table_id = aws_route_table.rtb-06b5721bd6c57d41e.id
  subnet_id      = aws_subnet.rates-pub2.id
}