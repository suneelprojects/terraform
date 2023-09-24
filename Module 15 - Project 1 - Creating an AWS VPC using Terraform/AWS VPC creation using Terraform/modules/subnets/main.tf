resource "aws_subnet" "public-subnets" {
  vpc_id            = var.vpc-id
  count             = length(var.azs)
  cidr_block        = element(var.public-subnets, count.index)
  availability_zone = element(var.azs, count.index)
  map_public_ip_on_launch = var.public_auto-assign-ip

  tags = {
    Name = var.publicsubnet-name[count.index]
  }
}

resource "aws_subnet" "private-subnets" {
  vpc_id            = var.vpc-id
  count             = length(var.azs)
  cidr_block        = element(var.private-subnets, count.index)
  availability_zone = element(var.azs, count.index)
  map_public_ip_on_launch = var.auto-assign-ip

  tags = {
    Name = var.privatesubnet-name[count.index]
  }
}
