provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWIBQPDIZ4SHKBHWF"
  secret_key = "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"
}

resource "aws_instance" "ec2" {
  ami           = "ami-04823729c75214919"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0baa145d1093915f7"

  tags = {
    Name = "tf-example"
  }
}


resource "aws_s3_bucket" "s3" {
  bucket = "my-tf-test-bucket-svhgsjhgbn-7893121036"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


output "s3_bucket" {
  value = aws_s3_bucket.s3.*
}

output "ec2_instance" {
  value = aws_instance.ec2.*
}
