data "external" "readthedocs_dns" {
  program = ["${path.module}/external/readthedocs-dns"]
}

resource "aws_route53_record" "charter_ip4" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = ""
  ttl     = "300"
  type    = "A"
  records = ["${split(" ", data.external.readthedocs_dns.result["ip4"])}"]
}

resource "aws_route53_record" "charter_ip6" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = ""
  ttl     = "300"
  type    = "AAAA"
  records = ["${split(" ", data.external.readthedocs_dns.result["ip6"])}"]
}

