# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_lb.arn_aws_elasticloadbalancing__loadbalancer_app_testl-Paym:
resource "aws_lb" "arn_aws_elasticloadbalancing__loadbalancer_app_testl-Paym" {
  desync_mitigation_mode                      = "defensive"
  drop_invalid_header_fields                  = false
  enable_cross_zone_load_balancing            = true
  enable_deletion_protection                  = false
  enable_http2                                = true
  enable_tls_version_and_cipher_suite_headers = false
  enable_waf_fail_open                        = false
  enable_xff_client_port                      = false
  idle_timeout                                = 60
  internal                                    = true
  ip_address_type                             = "ipv4"
  load_balancer_type                          = "application"
  name                                        = "testl-Payme-UNPBI1NL9VPA"
  preserve_host_header                        = false
  security_groups = [
    aws_security_group.sg-08f0a156dbeb9724b.id,
  ]
  subnets = [
    aws_subnet.payments-pub2.id,
    aws_subnet.payments-pub1.id,
  ]
  tags                       = {}
  tags_all                   = {}
  xff_header_processing_mode = "append"

  access_logs {
    bucket  = ""
    enabled = false
  }

}
