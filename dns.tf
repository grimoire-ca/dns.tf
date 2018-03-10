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

resource "aws_route53_zone" "primary" {
  name = "grimoire.ca"
}

output "name_servers" {
  value = "${aws_route53_zone.primary.name_servers}"
}
