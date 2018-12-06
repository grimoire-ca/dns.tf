# Configure GSuite on unreasonent.com.

resource "aws_route53_record" "mx" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = ""
  ttl     = "3600"
  type    = "MX"
  records = [
    "0 aspmx.l.google.com",
    "5 alt1.aspmx.l.google.com",
    "5 alt2.aspmx.l.google.com",
    "10 aspmx2.googlemail.com",
    "10 aspmx3.googlemail.com",
    "10 aspmx4.googlemail.com",
    "10 aspmx5.googlemail.com"
  ]
}
