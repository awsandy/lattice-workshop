# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# ../../scripts/052-get-iam-attached-role-policies.sh
# aws_iam_role_policy_attachment.r-testlatticebaseinfrawithapiserver-SSMRole-1CDQNUHP1D78M__AmazonSSMManagedInstanceCore:
resource "aws_iam_role_policy_attachment" "r-testlatticebaseinfrawithapiserver-SSMRole-1CDQNUHP1D78M__AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = aws_iam_role.r-testlatticebaseinfrawithapiserver-SSMRole-1CDQNUHP1D78M.id
}
