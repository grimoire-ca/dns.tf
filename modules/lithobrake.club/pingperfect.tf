resource "aws_route53_record" "play" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "play"
  ttl     = "300"
  type    = "A"
  records = ["66.23.202.195"]
}
