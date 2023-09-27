# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_vpclattice_listener_rule.svc-06f9423290d1e2bb1__listener-07a3088ef9edf4330__rule-0513073d4762ae9d7:
resource "aws_vpclattice_listener_rule" "svc-06f9423290d1e2bb1__listener-07a3088ef9edf4330__rule-0513073d4762ae9d7" {
  listener_identifier = aws_vpclattice_listener.svc-06f9423290d1e2bb1__listener-07a3088ef9edf4330.arn
  name                = "rates-rule"
  priority            = 10
  service_identifier  = aws_vpclattice_service.svc-06f9423290d1e2bb1.id
  tags                = {}
  tags_all            = {}

  action {
    forward {
      target_groups {
        target_group_identifier = aws_vpclattice_target_group.rates-tg.id
        weight                  = 1
      }
    }
  }

  match {
    http_match {
      path_match {
        case_sensitive = true

        match {
          exact = "/rates"
        }
      }
    }
  }
}