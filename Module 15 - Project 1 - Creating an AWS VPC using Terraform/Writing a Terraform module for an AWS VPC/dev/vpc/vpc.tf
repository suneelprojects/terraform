module "vpc" {

  source  = "../../modules/vpc"
  vpccidr = var.demo_vpccidr
  vpcname = var.demo_vpcname
}
