# Attach Policy to IAM Role

resource "aws_iam_role_policy_attachment" "attach_launch_policy" {
  role       = aws_iam_role.ec2_launch_role.name
  policy_arn = aws_iam_policy.ec2_launch_policy.arn
}

# Create Instance Profile

resource "aws_iam_instance_profile" "ec2_launch_profile_2" {
  name = "ec2_launch_profile_2"
  role = aws_iam_role.ec2_launch_role.name
}
