resource "aws_route53_record" "talk_spf" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "talk"
  ttl     = "300"
  type    = "TXT"
  records = ["v=spf1 include:mailgun.org ~all"]
}

resource "aws_route53_record" "talk_dkim" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "mx._domainkey.talk"
  ttl     = "300"
  type    = "TXT"
  records = ["k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtObSKyF83h42+dZK6ea4KN/VcmCDrj\"\"B+RiwhYjG6AmoEC3Tyv3NApS+rFelFetUkxK/66j9ig+1XMiCUHdUblh+vOsF+sntpZtUs7t5oa1\"\"9keRucJqtWebI1ObZSZ4ggRs4ouax9xs/2LoyeM75jORtk1P9gWH/5oJPw5vfKvbLRO1oO6WmfgT\"\"SDhdopK5Q/GhlIELhDcPpQiW6xW8IpRQkIHyFEsZQmv5CdKdWr0ZrquI8BJb0bUcDAPRV25AAJil\"\"664mbWtoGI/tGQQRRp0VWbX3sKLMsnNeT1gtTIimpZMScBFv8BucgptRpSRatjdHzgAhJPsn8VCV\"\"3cpME6TwIDAQAB"]
}
