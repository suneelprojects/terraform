variable "vpccidr" {
  description = "Mentioning the range of the cidr block"
}

variable "instance-tenancy" {
  description = "A tenancy option for instances launched into the VPC"
  default     = "default"
}

variable "enable-dns-support" {
  description = "A boolean flag to enable/disable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "enable-dns-hostnames" {
  description = "A boolean flag to enable/disable DNS hostnames in the VPC"
  type        = bool
  default     = false
}

variable "ipv6-cidr" {
  description = "Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC"
  default     = false
}

variable "vpcname" {
  description = "Mentioning the name of the vpc"
  type        = string
}
