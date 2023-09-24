resource "aws_eip" "eip" {
domain   = "vpc"

}


resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = element(var.public-association, 0)

  tags = {
    Name = var.natgateway-name
  }
}
