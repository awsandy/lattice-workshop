# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_route_table_association.subnet-04e4d0bf90c44cd56__rtbassoc-0ae8afcf9792849b2:
resource "aws_route_table_association" "subnet-04e4d0bf90c44cd56__rtbassoc-0ae8afcf9792849b2" {
  route_table_id = aws_route_table.rtb-0a39330951b04ddfa.id
  subnet_id      = aws_subnet.subnet-04e4d0bf90c44cd56.id
}
