variable "routetablecidr-public" {
  description = "Mentioning the cidr blocks for the route table"
}

variable "routetablecidr-private" {
  description = "Mentioning the cidr blocks for the route table"
}

variable "private-association" {
  description = "Mentioning the values which needs to read from the output"
}

variable "public-association" {
  description = "Mentioning the values which needs to read from the output"
}

variable "igw-id" {
  description = "Mentioning the internetgateway"
}

variable "nat-gateway-id" {
  description = "Mentioning the natgateway"
}

variable "public-subnets" {
  description = "Mentioning the public subnets details"
  type        = list(any)
}

variable "private-subnets" {
  description = "Mentioning the public subnets details"
  type        = list(any)
}

variable "vpc-id" {
  description = "Mentioning the name of the vpc"
  type        = string
}
