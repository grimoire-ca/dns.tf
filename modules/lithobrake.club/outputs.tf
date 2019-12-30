output "name_servers" {
  value = split(",", ns1_zone.primary.dns_servers)
}
