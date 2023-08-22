module "igw" {
source = "../../modules/internet_gateway"
vpc-id                = module.vpc.vpc_id
internet-gateway-name = var.dev_internet_gateway_name
}
