
terraform {
  required_version = ">= 0.13"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    external = {
      source = "hashicorp/external"
    }
    ns1 = {
      source = "ns1-terraform/ns1"
    }
  }
}
