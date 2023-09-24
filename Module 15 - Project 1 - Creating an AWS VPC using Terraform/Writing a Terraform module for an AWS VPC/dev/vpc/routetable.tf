module "routetable" {

 source                 = "../../modules/routetable"
  routetablecidr-public  = var.demo_publicroute
  routetablecidr-private = var.demo_privateroute
  vpc-id                 = module.vpc.vpc_id
  public-subnets         = var.demo_public-subnets
  private-subnets        = var.demo_private-subnets
  public-association     = module.subnets.public_subnets
  private-association    = module.subnets.private_subnets
  igw-id                 = module.internet_gateway.igw_id
  nat-gateway-id         = module.nat_gateway.ngw_id
}
