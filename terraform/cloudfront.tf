resource "aws_cloudfront_distribution" "s3_distribution" {
  enabled             = true
  default_root_object = "index.html"
  aliases             = ["bageltech.io"]

  origin {
    domain_name              = aws_s3_bucket.bageltech_io.bucket_regional_domain_name
    origin_id                = "bageltech-io"
    origin_access_control_id = aws_cloudfront_origin_access_control.s3_distribution.id
  }

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "bageltech-io"
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }

  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn = aws_acm_certificate.certificate.arn
    ssl_support_method  = "sni-only"
  }

  tags = {
    Environment = var.environment
  }
}

resource "aws_cloudfront_origin_access_control" "s3_distribution" {
  name                              = "bageltech-io-s3-origin"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}