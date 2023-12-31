# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_subnet.subnet-04e4d0bf90c44cd56:
resource "aws_subnet" "subnet-04e4d0bf90c44cd56" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "eu-west-1b"
  cidr_block                                     = "10.0.1.0/24"
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_native                                    = false
  map_public_ip_on_launch                        = true
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    "Name" = "LatticeWorkshop Public Subnet2 REservation"
  }
  tags_all = {
    "Name" = "LatticeWorkshop Public Subnet2 REservation"
  }
  vpc_id = aws_vpc.vpc-06977ec8dcb8f6e81.id
}
