# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_nat_gateway.nat-020adc6e1f0f06855:
resource "aws_nat_gateway" "nat-020adc6e1f0f06855" {
  allocation_id     = aws_eip.eipalloc-09ee2533ac01f095f.id
  connectivity_type = "public"
  subnet_id         = aws_subnet.subnet-080945eca077e4a32.id
  tags = {
    "Name" = "LatticeWorkshop Clients VPC"
  }
  tags_all = {
    "Name" = "LatticeWorkshop Clients VPC"
  }
}
