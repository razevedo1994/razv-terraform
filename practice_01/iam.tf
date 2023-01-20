# Group definition
resource "aws_iam_group" "administrators" {
    name = "administrators"
}

# Attach policy
resource "aws_iam_policy_attachment" "administrators-attach" {
    name = "administrators-attach"
    groups = [aws_iam_group.administrators.name]
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  
}

# User
resource "aws_iam_user" "developer_one" {
    name = "developer_one"
}

# Group membership
resource "aws_iam_group_membership" "developer_team" {
    name = "developer-team"

    users = [
        aws_iam_user.developer_one.name
    ]

    group = aws_iam_group.administrators.name
}