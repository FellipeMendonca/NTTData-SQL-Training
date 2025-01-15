resource "aws_iam_user" "ntt-data-palestra-sql-user" {
  name = "ntt-data-palestra-sql"
}

resource "aws_iam_user_policy_attachment" "ntt-data-palestra-sql-policy-attachment" {
  user       = aws_iam_user.ntt-data-palestra-sql-user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}
