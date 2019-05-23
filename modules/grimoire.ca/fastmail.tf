resource "aws_route53_record" "mx" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = ""
  ttl     = "3600"
  type    = "MX"
  records = [
    "10 in1-smtp.messagingengine.com",
    "20 in2-smtp.messagingengine.com",
  ]
}

# Entries used to configure GMail Postmaster Tools, so that we can diagnose mail
# delivery issues. Originated while investigating an email bounce:
#
# Diagnostic-Code: smtp; 550-5.7.1 [2600:3c03::f03c:91ff:fe96:36fd] Our system
#		has detected that this 550-5.7.1 message does not meet IPv6 sending
#		guidelines regarding PTR records 550-5.7.1 and authentication. Please
#		review 550-5.7.1	https://support.google.com/mail/?p=IPv6AuthError for more
#		information 550 5.7.1 . a22-v6si6636977qtd.95 - gsmtp
#
# Per Postmaster Tools, this should stay in place indefinitely:
#
# When Google finds the DNS record that you have added, we will verify your
# ownership of the domain. To stay verified, do not remove the DNS record, even
# after the verification succeeds. (DNS changes may take some time and if we do
# not find the record immediately, we will check for it periodically.)
#
# This _also_ includes Fastmail's recommended SPF rules.
resource "aws_route53_record" "spf" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = ""
  ttl     = "3600"
  type    = "TXT"
  records = [
    "google-site-verification=Mm2uEepwtTCg2Eq0fyDj_tTueVk4JAJTBI5yEsXGEi0",
    "v=spf1 include:spf.messagingengine.com ?all",
  ]
}

