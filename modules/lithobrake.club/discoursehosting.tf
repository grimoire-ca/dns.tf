resource "aws_route53_record" "talk" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "talk"
  type    = "CNAME"
  ttl     = "60"
  records = ["lithobrake.discoursehosting.net"]
}

resource "ns1_record" "talk" {
  zone   = "${ns1_zone.primary.zone}"
  domain = "talk.${ns1_zone.primary.zone}"
  type   = "CNAME"
  ttl    = 60

  answers {
    answer = "lithobrake.discoursehosting.net"
  }
}

resource "ns1_record" "a" {
  zone   = "${ns1_zone.primary.zone}"
  domain = "${ns1_zone.primary.zone}"
  type   = "ALIAS"
  ttl    = 60

  answers {
    answer = "lithobrake.discoursehosting.net"
  }
}
