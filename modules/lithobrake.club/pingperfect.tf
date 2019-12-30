resource "ns1_record" "play" {
  zone   = "${ns1_zone.primary.zone}"
  domain = "play.${ns1_zone.primary.zone}"
  type   = "A"
  ttl    = 300

  answers {
    answer = "104.206.80.146"
  }
}
