# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_subnet.subnet-0b6d0d667c4d5f0b7:
resource "aws_subnet" "subnet-0b6d0d667c4d5f0b7" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "eu-west-1c"
  cidr_block                                     = "10.0.5.0/24"
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    "Name"                = "LatticeWorkshop Private Subnet Client"
    "platform:visibility" = "private"
  }
  tags_all = {
    "Name"                = "LatticeWorkshop Private Subnet Client"
    "platform:visibility" = "private"
  }
  vpc_id = aws_vpc.vpc-0552cbf8549150e66.id
}
