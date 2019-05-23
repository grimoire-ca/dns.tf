resource "aws_route53_zone" "primary" {
  name = "lithobrake.club"

  tags = {
    Project = "dns.tf"
  }
}

