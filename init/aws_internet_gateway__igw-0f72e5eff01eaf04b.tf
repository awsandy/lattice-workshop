# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_internet_gateway.igw-0f72e5eff01eaf04b:
resource "aws_internet_gateway" "igw-0f72e5eff01eaf04b" {
  tags = {
    "Name" = "LatticeWorkshop"
  }
  tags_all = {
    "Name" = "LatticeWorkshop"
  }
  vpc_id = aws_vpc.payments.id
}
