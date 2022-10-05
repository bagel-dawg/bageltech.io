resource "aws_route53_zone" "zone" {
  name = "bageltech.io"

  tags = {
    Name        = "bageltech.io"
    Environment = var.environment
  }

}

resource "aws_route53_record" "bageltech_io" {
  zone_id  = aws_route53_zone.zone.zone_id
  name     = "bageltech.io"
  type     = "A"
  alias {
    name                   = aws_cloudfront_distribution.s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}

# resource "aws_route53_record" "origin_bageltech_io" {
#   zone_id  = aws_route53_zone.zone.zone_id
#   name     = "origin.bageltech.io"
#   type     = "CNAME"
#   alias {
#     name                   = aws_cloudfront_distribution.s3_distribution.domain_name
#     zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
#     evaluate_target_health = true
#   }
# }