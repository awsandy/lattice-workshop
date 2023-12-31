# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_route_table.rtb-074aa48c67f043297:
resource "aws_route_table" "rtb-074aa48c67f043297" {
  propagating_vgws = []
  route = [
    {
      carrier_gateway_id         = ""
      cidr_block                 = "0.0.0.0/0"
      core_network_arn           = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = ""
      nat_gateway_id             = aws_nat_gateway.nat-020adc6e1f0f06855.id
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    "Name" = "LatticeWorkshop Private Route Table"
  }
  tags_all = {
    "Name" = "LatticeWorkshop Private Route Table"
  }
  vpc_id = aws_vpc.vpc-0552cbf8549150e66.id
}
