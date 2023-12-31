# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_autoscaling_group.testlatticebaseinfrawithapiserver-PaymentsASG-1409F0PXQNT6K:
resource "aws_autoscaling_group" "testlatticebaseinfrawithapiserver-PaymentsASG-1409F0PXQNT6K" {
  #availability_zones = [
  #  "eu-west-1a",
  #  "eu-west-1b",
  #]

  vpc_zone_identifier = [aws_subnet.payments-pub1.id,aws_subnet.payments-pub2.id]
  capacity_rebalance        = false
  default_cooldown          = 300
  default_instance_warmup   = 0
  desired_capacity          = 1
  enabled_metrics           = []
  health_check_grace_period = 0
  health_check_type         = "EC2"
  load_balancers            = []
  max_instance_lifetime     = 0
  max_size                  = 1
  metrics_granularity       = "1Minute"
  min_size                  = 1
  name                      = "testlatticebaseinfrawithapiserver-PaymentsASG-1409F0PXQNT6K"
  protect_from_scale_in     = false
  service_linked_role_arn   = format("arn:aws:iam::%s:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling",data.aws_caller_identity.current.account_id)
  suspended_processes       = []
  target_group_arns = [
    aws_lb_target_group.arn_aws_elasticloadbalancing__targetgroup_payments-target-group.arn,
  ]
  termination_policies = []


  launch_template {
    name    = aws_launch_template.payments.name
    version = "1"
  }

  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "LatticeWorkshop Payments"
  }
}
