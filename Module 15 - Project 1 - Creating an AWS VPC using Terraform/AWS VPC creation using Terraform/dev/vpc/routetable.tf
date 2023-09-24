module "routetable" {

source = "../../modules/routetable"
routetablecidr-public  = var.dev_publicroute
routetablecidr-private = var.dev_privateroute
vpc-id                 = module.vpc.vpc_id
public-subnets         = var.dev_public_subnets
private-subnets        = var.dev_private_subnets
public-association     = module.subnets.public_subnets
private-association    = module.subnets.private_subnets
igw-id                 = module.igw.igw_id
nat-gateway-id         = module.ngw.ngw_id

}
