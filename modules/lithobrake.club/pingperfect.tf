resource "aws_route53_record" "play" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "play"
  ttl     = "300"
  type    = "A"
  records = ["104.206.80.146"]
}

resource "ns1_record" "play" {
  zone   = "${ns1_zone.primary.zone}"
  domain = "play.${ns1_zone.primary.zone}"
  type   = "A"
  ttl    = 300

  answers {
    answer = "104.206.80.146"
  }
}
