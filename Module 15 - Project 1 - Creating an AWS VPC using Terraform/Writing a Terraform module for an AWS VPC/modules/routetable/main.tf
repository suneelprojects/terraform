resource "aws_route_table" "routetable" {
  vpc_id = var.vpc-id

  route {
    cidr_block = var.routetablecidr-public
    gateway_id = var.igw-id
  }
}

resource "aws_route_table" "routetable_private" {
  vpc_id = var.vpc-id

  route {
    cidr_block = var.routetablecidr-private
    gateway_id = var.nat-gateway-id
  }
}

resource "aws_route_table_association" "public-subnet-association" {
  count          = length(var.public-subnets)
  subnet_id      = element(var.public-association, count.index)
  route_table_id = aws_route_table.routetable.id
}

resource "aws_route_table_association" "private-subnet-association" {
  count          = length(var.private-subnets)
  subnet_id      = element(var.private-association, count.index)
  route_table_id = aws_route_table.routetable_private.id
}
