resource "aws_route53_record" "nj1_grimoire_ca_ip4" {
  zone_id = "${aws_route53_zone.grimoire_ca.zone_id}"
  name    = "nj1"
  ttl     = "3600"
  type    = "A"
  records = ["69.164.211.26"]
}

resource "aws_route53_record" "nj1_grimoire_ca_ip6" {
  zone_id = "${aws_route53_zone.grimoire_ca.zone_id}"
  name    = "nj1"
  ttl     = "3600"
  type    = "AAAA"
  records = ["2600:3c03::f03c:91ff:fe96:36fd"]
}


resource "aws_route53_record" "grimoire_ca_mx" {
  zone_id = "${aws_route53_zone.grimoire_ca.zone_id}"
  name    = ""
  ttl     = "3600"
  type    = "MX"
  records = ["10 ${aws_route53_record.mail_grimoire_ca.fqdn}"]
}


resource "aws_route53_record" "mail_grimoire_ca" {
  zone_id = "${aws_route53_zone.grimoire_ca.zone_id}"
  name    = "mail"
  ttl     = "3600"
  type    = "CNAME"
  records = ["${aws_route53_record.nj1_grimoire_ca_ip4.fqdn}"]
}

resource "aws_route53_record" "moo_grimoire_ca" {
  zone_id = "${aws_route53_zone.grimoire_ca.zone_id}"
  name    = "moo"
  ttl     = "3600"
  type    = "CNAME"
  records = ["${aws_route53_record.nj1_grimoire_ca_ip4.fqdn}"]
}

resource "aws_route53_record" "ottgaming_grimoire_ca" {
  zone_id = "${aws_route53_zone.grimoire_ca.zone_id}"
  name    = "ottgaming"
  ttl     = "3600"
  type    = "CNAME"
  records = ["${aws_route53_record.nj1_grimoire_ca_ip4.fqdn}"]
}

resource "aws_route53_record" "tumblr_grimoire_ca" {
  zone_id = "${aws_route53_zone.grimoire_ca.zone_id}"
  name    = "tumblr"
  ttl     = "3600"
  type    = "CNAME"
  records = ["${aws_route53_record.nj1_grimoire_ca_ip4.fqdn}"]
}

resource "aws_route53_record" "znc_grimoire_ca" {
  zone_id = "${aws_route53_zone.grimoire_ca.zone_id}"
  name    = "znc"
  ttl     = "3600"
  type    = "CNAME"
  records = ["${aws_route53_record.nj1_grimoire_ca_ip4.fqdn}"]
}
