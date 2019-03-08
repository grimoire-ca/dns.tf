resource "aws_route53_record" "charter_ip4" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = ""
  ttl     = "300"
  type    = "A"
  records = [
    "104.18.227.122",
    "104.18.228.122",
    "104.18.229.122",
    "104.18.230.122",
    "104.18.231.122",
  ]
}

resource "aws_route53_record" "charter_ip6" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = ""
  ttl     = "300"
  type    = "AAAA"
  records = [
    "2606:4700::6812:e37a",
    "2606:4700::6812:e47a",
    "2606:4700::6812:e57a",
    "2606:4700::6812:e77a",
    "2606:4700::6812:e67a",
  ]
}

