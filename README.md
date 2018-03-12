# Zone Configuration for Grimoire.ca DNS

This repository contains Terraform manifests to manage the `grimoire.ca` zone. The zone is registered through rebel.ca.

To sanity-check the deployed zone, run the included `bin/check-delegation` script. This will output instructions if the current DNS delegation (configured through the registrar) differs from AWS' delegation configuration (as reported by Route53).
