module "grimoire_ca" {
  source = "./modules/grimoire.ca"
}

module "lithobrake_club" {
  source = "./modules/lithobrake.club"
}

output "grimoire_ca_zone_id" {
  value = module.grimoire_ca.zone_id
}
