# Hosts and other RRs that point to Linode resources. These are largely legacy
# services managed outside of Terraform; over time, I'd like this set ot shrink.

resource "aws_route53_record" "nj1_ip4" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "nj1"
  ttl     = "3600"
  type    = "A"
  records = ["69.164.211.26"]
}

resource "aws_route53_record" "nj1_ip6" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "nj1"
  ttl     = "3600"
  type    = "AAAA"
  records = ["2600:3c03::f03c:91ff:fe96:36fd"]
}

resource "aws_route53_record" "ottgaming" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "ottgaming"
  ttl     = "3600"
  type    = "CNAME"
  records = [aws_route53_record.nj1_ip4.fqdn]
}

resource "aws_route53_record" "tumblr" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "tumblr"
  ttl     = "3600"
  type    = "CNAME"
  records = [aws_route53_record.nj1_ip4.fqdn]
}

