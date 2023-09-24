module "subnets" {

  source             = "../../modules/subnets"
  vpccidr            = var.demo_vpccidr
  vpc-id             = module.vpc.vpc_id
  public-subnets     = var.demo_public-subnets
  private-subnets    = var.demo_private-subnets
  azs                = var.demo_azs
  publicsubnet-name  = var.demo_publicsubnet-name
  privatesubnet-name = var.demo_privatesubnet-name
}
