provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWIBQPDIZ4SHKBHWF"
  secret_key = "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"
}


module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.2.1"
  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "terraform"
  monitoring             = true
  vpc_security_group_ids = ["sg-0cd39b66021e09f39"]
  subnet_id              = "subnet-00ad507fea4b45014"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
