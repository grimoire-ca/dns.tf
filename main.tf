module "grimoire_ca" {
  source = "./modules/grimoire.ca"
}

module "lithobrake_club" {
  source = "./modules/lithobrake.club"
}

output "grimoire_ca_name_servers" {
  value = module.grimoire_ca.name_servers
}

output "grimoire_ca_zone_id" {
  value = module.grimoire_ca.zone_id
}

output "lithobrake_club_name_servers" {
  value = module.lithobrake_club.name_servers
}
