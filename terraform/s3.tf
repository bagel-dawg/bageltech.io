resource "aws_s3_bucket" "terraform_state" {
  bucket = "bageltech-io-terraform"

  tags = {
    Name        = "bageltech-io-terraform"
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "bageltech_io" {
  bucket = "bageltech.io"

  tags = {
    Name        = "bageltech.io"
    Environment = var.environment
  }
}
