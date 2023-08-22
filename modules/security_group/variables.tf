variable "ingress-ports" {
  type        = list(number)
  description = "list of ingress ports"
}

variable "egress-ports" {
  type        = list(number)
  description = "list of egress ports"
}

variable "vpc-id" {
  description = "Mentioning the name of the vpc"
  type        = string
}

variable "securitygroup-name" {
  description = "Mentioning the name of the security group"
  type        = string
}
