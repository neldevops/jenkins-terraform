# what resource do you want to create?

resource "aws_iam_user" "users1" {
  name = var.username
}

resource "aws_iam_user" "dike" {
  name = var.dike
}
