# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_vpclattice_service.svc-01140bc6b2d1ae15b:
resource "aws_vpclattice_service" "svc-01140bc6b2d1ae15b" {
  auth_type = "NONE"
  name      = "reservation"
  tags      = {}
  tags_all  = {}
}

output "svc-reservation-dns" {
value=aws_vpclattice_service.svc-01140bc6b2d1ae15b.dns_entry[0].domain_name
}