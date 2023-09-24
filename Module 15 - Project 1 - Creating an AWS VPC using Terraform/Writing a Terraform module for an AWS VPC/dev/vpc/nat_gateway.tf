module "nat_gateway" {

  source             = "../../modules/nat_gateway"
  public-association = module.subnets.public_subnets
  natgateway-name    = var.demo_natgateway-name
}
