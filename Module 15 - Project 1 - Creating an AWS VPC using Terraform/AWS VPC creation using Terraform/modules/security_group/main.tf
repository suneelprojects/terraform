resource "aws_security_group" "vpc_sg" {
  name   = var.securitygroup-name
  vpc_id = var.vpc-id

  dynamic "ingress" {
    for_each = var.ingress-ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    for_each = var.egress-ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  tags = {
    Name = var.securitygroup-name
  }
}

