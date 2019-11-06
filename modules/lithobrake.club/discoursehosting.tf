data "external" "discoursehosting_dns" {
  program = ["${path.module}/external/from-dns"]

  query = {
    host = "lithobrake.discoursehosting.net"
  }
}

resource "aws_route53_record" "talk" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "talk"
  type    = "CNAME"
  ttl     = "60"
  records = ["lithobrake.discoursehosting.net"]
}

resource "aws_route53_record" "a" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = ""
  ttl     = "60"
  type    = "A"
  records = split(" ", data.external.discoursehosting_dns.result["A"])
}
