# Zone Configuration for Grimoire.ca DNS

This repository contains Terraform manifests to manage a number of DNS zones. The zones are registered through gandi.net.

This repository provides the following outputs for use in remote state:

* `grimoire_ca_zone_id`: The AWS ID of the `grimoire.ca` zone, as needed to create records in that zone.

To access these outputs, add the following data provider to your manifest:

```terraform
data "terraform_remote_state" "dns" {
  backend = "s3"

  config {
    bucket = "terraform.grimoire"
    key    = "dns.tfstate"
    region = "ca-central-1"
  }
}
```
