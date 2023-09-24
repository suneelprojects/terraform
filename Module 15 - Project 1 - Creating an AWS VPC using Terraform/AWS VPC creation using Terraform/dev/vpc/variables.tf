
variable "dev_vpccidr" {
  description = "Mentioning the range of the cidr block"
}

variable "dev_vpcname" {
  description = "Mentioning the name of the vpc"
  type        = string
}

# subnets info

variable "dev_public_subnets" {
  description = "Mentioning the public subnets details"
  type        = list(any)
}

variable "dev_private_subnets" {
  description = "Mentioning the public subnets details"
  type        = list(any)
}

variable "dev_azs" {
  description = "Mentioning the azs w.r.t regions"
  type        = list(any)
}


variable "dev_publicsubnet_name" {
  description = "Mentioning the name of the publicsubnet"
  type        = list(string)
}

variable "dev_privatesubnet_name" {
  description = "Mentioning the name of the privatesubnet"
  type        = list(string)
}


# igw
variable "dev_internet_gateway_name" {
  description = "Mentioning the internet_gateway_name "
  type        = string
}

# nat nat_gateway
variable "dev_natgateway_name" {
  description = "Mentioning the dev_natgateway_name "
  type        = string
}


# Routetable info

variable "dev_publicroute" {
 description = "Mentioning the cidr blocks for the route table"
}

variable "dev_privateroute" {
 description = "Mentioning the cidr blocks for the route table"
}
