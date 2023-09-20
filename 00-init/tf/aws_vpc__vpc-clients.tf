# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_vpc.vpc-0552cbf8549150e66:
resource "aws_vpc" "vpc-0552cbf8549150e66" {
  assign_generated_ipv6_cidr_block     = false
  cidr_block                           = "10.0.0.0/16"
  enable_dns_hostnames                 = true
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"
  tags = {
    "Name" = "LatticeWorkshop Clients VPC"
  }
  tags_all = {
    "Name" = "LatticeWorkshop Clients VPC"
  }
}
