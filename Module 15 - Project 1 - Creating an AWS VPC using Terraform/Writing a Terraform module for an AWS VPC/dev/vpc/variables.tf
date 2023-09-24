variable "demo_publicroute" {
 description = "Mentioning the cidr blocks for the route table"
}

variable "demo_privateroute" {
 description = "Mentioning the cidr blocks for the route table"
}

variable "demo_ingress-ports" {
  type        = list(number)
  description = "list of ingress ports"
}

variable "demo_egress-ports" {
  type        = list(number)
  description = "list of egress ports"
}

variable "demo_publicsubnet-name" {
  description = "Mentioning the name of the publicsubnet"
  type        = list(string)
}

variable "demo_privatesubnet-name" {
  description = "Mentioning the name of the privatesubnet"
  type        = list(string)
}

variable "demo_securitygroup-name" {
  description = "Mentioning the name of the security group"
  type        = string
}

variable "demo_vpcname" {
  description = "Mentioning the name of the vpc"
  type        = string
}

variable "demo_natgateway-name" {
  description = "Mentioning the name of the NG"
  type        = string
}

variable "demo_internet-gateway-name" {
  description = "Mentioning the name of the IG"
  type        = string
}

variable "demo_public-subnets" {
  description = "Mentioning the public subnets details"
  type        = list(any)
}

variable "demo_private-subnets" {
  description = "Mentioning the public subnets details"
  type        = list(any)
}

variable "demo_azs" {
  description = "Mentioning the azs w.r.t regions"
  type        = list(any)
}

variable "demo_vpccidr" {
  description = "Mentioning the range of the cidr block"
}
