terraform {
  backend "s3" {
    bucket         = "my-tf-test-bucket-svhgsjhgbn-7893121036"
    key            = "dev/vpc.tfstate"
    region         = "us-east-1"
    dynamodb_table = "state-locking"
    profile = "dev"

  }
}
