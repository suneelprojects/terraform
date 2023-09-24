resource "aws_vpc" "vpc" {
  cidr_block                       = var.vpccidr
  instance_tenancy                 = var.instance-tenancy
  enable_dns_support               = var.enable-dns-support
  enable_dns_hostnames             = var.enable-dns-hostnames
  assign_generated_ipv6_cidr_block = var.ipv6-cidr

  tags = {
    Name = var.vpcname
  }
}
