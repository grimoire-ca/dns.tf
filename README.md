# Zone Configuration for Grimoire.ca DNS

This repository contains Terraform manifests to manage a number of DNS zones. The zones are registered through gandi.net.

To sanity-check the deployed zones, run the included `bin/check-delegation` script. This will output instructions if the current DNS delegation (configured through the registrar) differs from AWS' delegation configuration (as reported by Route53).

This repository provides the following outputs for use in remote state:

* `grimoire_ca_name_servers`: The authoritative nameservers for the zone `grimoire.ca.`
* `grimoire_ca_zone_id`: The AWS ID of the `grimoire.ca` zone, as needed to create records in that zone.
* `unreasonent_com_name_servers`: The authoritative nameservers for the zone `unreasonent.com.`
* `unreasonent_com_zone_id`: The AWS ID of the `unreasonent.com` zone, as needed to create records in that zone.
* `distant_shore_com_name_servers`: The authoritative nameservers for the zone `distant-shore.com.`
* `distant_shore_com_zone_id`: The AWS ID of the `distant-shore.com` zone, as needed to create records in that zone.

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
