locals {
    route53_zones = {
        "bageltech-io" = {
          fqdn = "bageltech.io"
        },
        "bageltechnologies-com" = {
          fqdn = "bageltechnologies.com"
        }
    }
}

resource "aws_route53_zone" "zones" {
  for_each = local.route53_zones
  name     = each.value.fqdn

  tags = {
    Name        = each.key
    Environment = var.environment
  }

}

resource "aws_route53_record" "ns_records" {
  for_each = local.route53_zones
  zone_id  = aws_route53_zone.zones[each.key].zone_id
  name     = each.value.fqdn
  type     = "NS"
  ttl      = "172800"
  records  = aws_route53_zone.zones[each.key].name_servers
}

# resource "aws_route53_record" "bageltech_io" {
#   zone_id  = aws_route53_zone.zones["bageltech-io"].zone_id
#   name     = "bageltech.io"
#   type     = "A"


#   alias {
#     name                   = aws_cloudfront_distribution.s3_distribution.domain_name
#     zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
#     evaluate_target_health = true
#   }

# }