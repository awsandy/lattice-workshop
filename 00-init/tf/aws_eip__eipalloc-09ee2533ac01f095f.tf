# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_eip.eipalloc-09ee2533ac01f095f:
resource "aws_eip" "eipalloc-09ee2533ac01f095f" {
  network_border_group = "eu-west-1"
  public_ipv4_pool     = "amazon"
  tags = {
    "Name"                = "LatticeWorkshop Clients VPC"
    "platform:visibility" = "public"
  }
  tags_all = {
    "Name"                = "LatticeWorkshop Clients VPC"
    "platform:visibility" = "public"
  }
  vpc = true
}
