resource "aws_route53_zone" "primary" {
  name = "lithobrake.club"

  tags = {
    Project = "dns.tf"
  }
}

resource "ns1_zone" "primary" {
  zone = "lithobrake.club"
}
