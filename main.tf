module "grimoire_ca" {
  source = "./modules/grimoire.ca"
}

module "unreasonent_com" {
  source = "./modules/unreasonent.com"
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

output "unreasonent_com_name_servers" {
  value = module.unreasonent_com.name_servers
}

output "unreasonent_com_zone_id" {
  value = module.unreasonent_com.zone_id
}
