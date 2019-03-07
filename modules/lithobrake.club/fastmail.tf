resource "aws_route53_record" "mx" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = ""
  ttl     = "3600"
  type    = "MX"
  records = [
    "10 in1-smtp.messagingengine.com",
    "20 in2-smtp.messagingengine.com",
  ]
}

resource "aws_route53_record" "spf" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = ""
  ttl     = "3600"
  type    = "TXT"
  records = [
    "v=spf1 include:spf.messagingengine.com ?all",
  ]
}
