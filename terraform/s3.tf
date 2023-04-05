resource "aws_s3_bucket" "bageltech_io" {
  bucket = "bageltech-io"

  tags = {
    Name        = "bageltech-io"
    Environment = var.environment
  }
}


resource "aws_s3_bucket_acl" "bageltech_io" {
  bucket = aws_s3_bucket.bageltech_io.id
  acl    = "private"
}

# Allow access to s3 via cloudfront origin
resource "aws_s3_bucket_policy" "bageltech_io" {
  bucket = aws_s3_bucket.bageltech_io.id
  policy = data.aws_iam_policy_document.bageltech_io.json
}

data "aws_iam_policy_document" "bageltech_io" {
  statement {
    principals {
      type        = "Service"
      identifiers = ["cloudfront.amazonaws.com"]
    }

    actions = [
      "s3:GetObject"
    ]

    resources = [
      "${aws_s3_bucket.bageltech_io.arn}/*",
    ]

    condition {
      test     = "StringEquals"
      variable = "AWS:SourceArn"

      values = [ aws_cloudfront_distribution.s3_distribution.arn ]
    }

  }
}

resource "aws_s3_bucket" "bageltech_loki" {
  bucket = "bageltech-loki"

  tags = {
    Name        = "bageltech-loki"
    Environment = var.environment
  }
}

# Bucket for Loki monitoring
resource "aws_s3_bucket_acl" "bageltech_loki" {
  bucket = aws_s3_bucket.bageltech_loki.id
  acl    = "private"
}
