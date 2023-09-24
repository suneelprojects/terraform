module "vpc"{

source = "../../modules/vpc"

vpccidr = var.dev_vpccidr
vpcname = var.dev_vpcname
}
