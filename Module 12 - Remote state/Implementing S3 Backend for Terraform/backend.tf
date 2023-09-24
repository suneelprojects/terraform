terraform {
  backend "s3" {
    bucket         = "my-tf-test-bucket-svhgsjhgbn-7893121036"
    key            = "dev/ec2.tfstate"
    region         = "us-east-1"

  }
}
