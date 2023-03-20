resource "aws_iam_user" "newusers" {
  count = length(var.username)
  name  = element(var.username, count.index)


  tags = var.tag_name
}

resource "aws_iam_user_policy_attachment" "ecr" {
  count      = length(var.username)
  user       = element(aws_iam_user.newusers.*.name, count.index)
  #user = aws_iam_user.newusers.1.policy
  policy_arn = aws_iam_policy.policy.arn
}


resource "aws_iam_policy" "policy" {
  name        = var.name
    description = "My test policy"


  policy = jsonencode({
    "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ecr:Get*",
        "ecr:List*",
        "ecr:Describe*",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
        Action = [
          "ecr:GetAuthorizationToken",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
