# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_subnet.subnet-0b30aa46e410c903d:
resource "aws_subnet" "subnet-0b30aa46e410c903d" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "eu-west-1a"
  cidr_block                                     = "10.0.0.0/24"
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_native                                    = false
  map_public_ip_on_launch                        = true
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    "Name" = "LatticeWorkshop Public Subnet1 Payments"
  }
  tags_all = {
    "Name" = "LatticeWorkshop Public Subnet1 Payments"
  }
  vpc_id = aws_vpc.payments.id
}
