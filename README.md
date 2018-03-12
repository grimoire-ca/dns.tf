# Zone Configuration for Grimoire.ca DNS

This repository contains Terraform manifests to manage the `grimoire.ca` zone. The zone is registered through rebel.ca.

To sanity-check the deployed zone, run the included `bin/check-delegation` script. This will output instructions if the current DNS delegation (configured through the registrar) differs from AWS' delegation configuration (as reported by Route53).

This repository provides the following outputs for use in remote state:

* `name_servers`: The authoritative nameservers for the configured zone.
* `zone_id`: The AWS ID of the configured zone, as needed to create records in that zone.

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
