resource "aws_route53_zone" "primary" {
  name = "grimoire.ca"

  tags {
    Project = "dns.tf"
  }
}
