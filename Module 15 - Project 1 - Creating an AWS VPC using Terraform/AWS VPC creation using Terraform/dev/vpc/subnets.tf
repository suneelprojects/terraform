module "subnets"{
source = "../../modules/subnets"

vpccidr            = var.dev_vpccidr
vpc-id             = module.vpc.vpc_id
public-subnets     = var.dev_public_subnets
private-subnets    = var.dev_private_subnets
azs                = var.dev_azs
publicsubnet-name  = var.dev_publicsubnet_name
privatesubnet-name = var.dev_privatesubnet_name

}
