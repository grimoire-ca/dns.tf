terraform {
  backend "s3" {
    bucket = "terraform.grimoire"
    key    = "dns.tfstate"
    region = "ca-central-1"
  }
}

provider "aws" {
  version = "~> 2.11"

  region = "ca-central-1"
}

provider "external" {
  version = "~> 1.1.2"
}

