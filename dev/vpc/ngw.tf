module "ngw"{
source = "../../modules/nat_gateway"
public-association = module.subnets.public_subnets
natgateway-name    = var.dev_natgateway_name
}
