resource "aws_route53_zone" "primary" {
  name = "unreasonent.com"

  tags = {
    Project = "dns.tf"
  }
}

