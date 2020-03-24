resource "ns1_record" "mx" {
  zone   = ns1_zone.primary.zone
  domain = ns1_zone.primary.zone
  type   = "MX"
  ttl    = 3600

  answers {
    answer = "10 in1-smtp.messagingengine.com"
  }

  answers {
    answer = "20 in2-smtp.messagingengine.com"
  }
}

resource "ns1_record" "spf" {
  zone   = ns1_zone.primary.zone
  domain = ns1_zone.primary.zone
  type   = "TXT"
  ttl    = 3600

  answers {
    answer = "v=spf1 include:spf.messagingengine.com ?all"
  }
}
