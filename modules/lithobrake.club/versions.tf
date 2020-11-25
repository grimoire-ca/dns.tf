terraform {
  required_version = ">= 0.13"
  required_providers {
    gandi = {
      source = "psychopenguin/gandi"
    }
    ns1 = {
      source = "ns1-terraform/ns1"
    }
  }
}
