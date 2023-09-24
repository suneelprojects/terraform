
Terraform 0.12 and earlier
--------------------

provider "aws" {
version = "5.12.0"
region = "us-east-1"

}




Terraform 0.13+ :
--------------------

terraform {
  required_version = "1.1.9"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.12.0"
    }
  }
}
