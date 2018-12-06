terraform {
  backend "s3" {
    bucket = "terraform.grimoire"
    key    = "dns.tfstate"
    region = "ca-central-1"
  }
}

provider "aws" {
  version = "~> 1.11"

  region = "ca-central-1"
}

module "grimoire_ca" {
  source = "./modules/grimoire.ca"
}

# Deprecated - use grimoire_ca_name_servers to disambiguate the domain name.
output "name_servers" {
  value = "${module.grimoire_ca.name_servers}"
}

# Deprecated - use grimoire_ca_zone_id to disambiguate the domain name.
output "zone_id" {
  value = "${module.grimoire_ca.zone_id}"
}

output "grimoire_ca_name_servers" {
  value = "${module.grimoire_ca.name_servers}"
}

output "grimoire_ca_zone_id" {
  value = "${module.grimoire_ca.zone_id}"
}
