# VPC Resource
resource "aws_vpc" "this" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  assign_generated_ipv6_cidr_block     = false
  enable_network_address_usage_metrics = false
  tags                                 = { Name = "csjin-test-vpc" }
}
