resource "aws_route53_zone" "grimoire_ca" {
  name = "grimoire.ca"
}

# Deprecated; use grimoire_ca_name_servers instead (to disambiguate by zone)
output "name_servers" {
  value = "${aws_route53_zone.grimoire_ca.name_servers}"
}

# Deprecated; use grimoire_ca_zone_id instead (to disambiguate by zone)
output "zone_id" {
  value = "${aws_route53_zone.grimoire_ca.zone_id}"
}

output "grimoire_ca_name_servers" {
  value = "${aws_route53_zone.grimoire_ca.name_servers}"
}

output "grimoire_ca_zone_id" {
  value = "${aws_route53_zone.grimoire_ca.zone_id}"
}
