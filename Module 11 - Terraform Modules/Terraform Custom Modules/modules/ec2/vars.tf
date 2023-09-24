variable "ami_id" {
description = "Provide the ami_id"
}

variable "instance_type" {
description = "Provide the instnace_type"
}

variable "subnet_id" {
description = "Provide the subnet_id"
}


variable "key_name" {
description = "Provide the key_name"
}


variable "tag_name" {
description = "Provide the tag_name"
}

variable "monitoring" {
description = "Enable the monitoring"
default = "false"
}

variable "vpc_security_group_ids" {
description = "Provide the vpc_security_group_ids"
type = list(string)
}
