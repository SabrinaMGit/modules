data "aws_iam_policy_document" "allow_access_from_another_account" {
  statement {
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::927377771274:user/Alex"]
    }

    actions = [
      "s3:GetObject",
      "s3:ListBucket",
    ]

    resources = [
      aws_s3_bucket.portfolio.arn,
      "${aws_s3_bucket.portfolio.arn}/*",
    ]
  }
}