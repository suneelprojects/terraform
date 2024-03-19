provider "aws" {
  region = "us-west-2"
  access_key = "AKIAU6GD3TT3YP5N5YJ4"
  secret_key = "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"
}

# Step 1: Create the AWS VPC
resource "aws_vpc" "suneel_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Suneel-VPC"
  }
}

# Step 2: Create 2 Public Subnets
resource "aws_subnet" "public_subnet" {
  count                  = 2
  vpc_id                 = aws_vpc.suneel_vpc.id
  cidr_block             = element(["10.0.1.0/24", "10.0.2.0/24"], count.index)
  availability_zone      = "us-west-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "suneel-public-subnet-${count.index + 1}"
  }
}

# Step 3: Create 2 Private Subnets
resource "aws_subnet" "private_subnet" {
  count             = 2
  vpc_id            = aws_vpc.suneel_vpc.id
  cidr_block        = element(["10.0.3.0/24", "10.0.4.0/24"], count.index)
  availability_zone = "us-west-2b"
  tags = {
    Name = "Suneel-private-subnet-${count.index + 1}"
  }
}

# Step 4: Create an Internet Gateway and attach it to Suneel-VPC
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.suneel_vpc.id
  tags = {
    Name = "Suneel-IGW"
  }
}

# Step 5: Create a Route Table for Public Subnets
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.suneel_vpc.id
  tags = {
    Name = "Suneel-rtb-public"
  }
}

# Step 6: Create a Route Table for Private Subnets
resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.suneel_vpc.id
  tags = {
    Name = "Suneel-rtb-private"
  }
}

# Step 7: Add the Internet Gateway route to the Public Route Table
resource "aws_route" "internet_gateway_route" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

# Step 8: Associate Public Subnets with the Public Route Table
resource "aws_route_table_association" "public_subnet_association" {
  count          = 2
  subnet_id      = aws_subnet.public_subnet[count.index].id
  route_table_id = aws_route_table.public_route_table.id
}

# Step 9: Create the EIP
resource "aws_eip" "nat_gateway_eip" {
  tags = {
    Name = "Suneel-EIP"
  }
}

# Step 10: Create the NAT Gateway in the Public Subnet
resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_gateway_eip.id
  subnet_id     = element(aws_subnet.public_subnet[*].id, 0) // Choose the first public subnet
}

# Step 11: Add the NAT Gateway route to the Private Route Table
resource "aws_route" "nat_gateway_route" {
  route_table_id         = aws_route_table.private_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_gateway.id
}

# Step 12: Associate Private Subnets with the Private Route Table
resource "aws_route_table_association" "private_subnet_association" {
  count          = 2
  subnet_id      = aws_subnet.private_subnet[count.index].id
  route_table_id = aws_route_table.private_route_table.id
}

# Step 13: Create Security Group for Public Instance
resource "aws_security_group" "public_instance_sg" {
  vpc_id = aws_vpc.suneel_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH access from anywhere
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Step 14: Create an EC2 Instance in one of the Public Subnets
resource "aws_instance" "public_instance" {
  ami           = "ami-0c7843ce70e666e51"  # Example AMI ID
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet[0].id  # Choose one of the public subnets
  key_name      = "terraform"  # Replace with your key pair name
  vpc_security_group_ids = [aws_security_group.public_instance_sg.id]  # Specify the security group directly
  tags = {
    Name = "public-instance"
  }

  user_data = <<-EOF
              #!/bin/bash
              echo 'This is user data for the public instance' > /tmp/user_data.txt
              EOF
}


# Step 15: Create an EC2 Instance in one of the Private Subnets
resource "aws_instance" "private_instance" {
  ami           = "ami-0c7843ce70e666e51"  # Example AMI ID
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet[0].id  # Choose one of the private subnets
  key_name      = "terraform"  # Replace with your key pair name
  tags = {
    Name = "private-instance"
  }
}
