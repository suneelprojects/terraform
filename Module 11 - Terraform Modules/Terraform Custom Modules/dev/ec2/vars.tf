variable "ami-id"{
type = string
description = "Provide the ami id"
}

variable "instance-type"{
type = string
}

variable "subnet-id"{
type = string
}


variable "monitoring"{
type = bool
}

variable "vpc-security-group-ids"{
type = list(string)
}

variable "key-name"{
type = string
}

variable "tag-name"{
type = string
}
