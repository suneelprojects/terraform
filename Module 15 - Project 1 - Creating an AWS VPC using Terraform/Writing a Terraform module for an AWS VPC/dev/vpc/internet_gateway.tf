module "internet_gateway" {

 source                = "../../modules/internet_gateway"
  vpc-id                = module.vpc.vpc_id
  internet-gateway-name = var.demo_internet-gateway-name
}
