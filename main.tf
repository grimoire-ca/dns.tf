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

output "name_servers" {
  value = "${module.grimoire_ca.name_servers}"
}

output "zone_id" {
  value = "${module.grimoire_ca.zone_id}"
}
