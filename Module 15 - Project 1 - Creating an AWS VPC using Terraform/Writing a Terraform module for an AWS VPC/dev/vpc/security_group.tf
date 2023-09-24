module "security_group" {

  source             = "../../modules/security_group"
  ingress-ports      = var.demo_ingress-ports
  egress-ports       = var.demo_egress-ports
  vpc-id             = module.vpc.vpc_id
  securitygroup-name = var.demo_securitygroup-name
}
