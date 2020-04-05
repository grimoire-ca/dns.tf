resource "ns1_record" "play" {
  zone   = ns1_zone.primary.zone
  domain = "eco.${ns1_zone.primary.zone}"
  type   = "A"
  ttl    = 300

  answers {
    answer = "170.130.139.130"
  }
}
