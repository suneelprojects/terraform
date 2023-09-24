variable "public-association" {
  description = "Mentioning the values which needs to read from the output"
}

variable "eip-vpc" {
  description = "Mentioning whether the eip need to be created or not in vpc"
  type        = bool
  default     = true
}

variable "natgateway-name" {
  description = "Metioning the name of the natgatway"
  type        = string
}


