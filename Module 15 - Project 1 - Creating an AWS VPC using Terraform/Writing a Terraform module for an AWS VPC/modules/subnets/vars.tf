variable "vpccidr" {
  description = "Mentioning the range of the cidr block"
  type        = string
}

variable "vpc-id" {
  description = "Mentioning the name of the vpc"
  type        = string
}

variable "public-subnets" {
  description = "Mentioning the public subnets details"
  type        = list(any)

}

variable "private-subnets" {
  description = "Mentioning the public subnets details"
  type        = list(any)

}

variable "azs" {
  description = "Mentioning the azs w.r.t regions"
  type        = list(any)
}

variable "publicsubnet-name" {
  description = "Mentioning the name of the publicsubnet"
  type        = list(string)
}

variable "privatesubnet-name" {
  description = "Mentioning the name of the privatesubnet"
  type        = list(string)
}

variable "public-auto-assign-ip" {
description = "it autoassings the ip adress"
type = bool
default = true
}

variable "auto-assign-ip" {
description = "it autoassings the ip adress"
type = bool
default = false
}
