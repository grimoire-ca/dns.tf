resource "aws_route53_record" "talk" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "talk"
  type    = "CNAME"
  ttl     = "60"
  records = ["lithobrake.discoursehosting.net"]
}
