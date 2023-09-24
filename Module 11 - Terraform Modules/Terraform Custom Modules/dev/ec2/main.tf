module "ec2-instance"{
source = "../../modules/ec2"
ami_id = var.ami-id
instance_type = var.instance-type
subnet_id              = var.subnet-id
monitoring = var.monitoring
vpc_security_group_ids = var.vpc-security-group-ids
key_name = var.key-name

tag_name = var.tag-name
}
