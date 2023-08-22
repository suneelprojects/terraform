provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAWIBQPDIZY7BZFS5G"
  secret_key = "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"
}

resource "aws_iam_group" "developers" {
  name = "developers"
  path = "/users/"
}


resource "aws_instance" "web" {
  ami           = "ami-0e0f3d4588f992288"
  instance_type = var.instnace-type

  tags = {
    Name = "HelloWorld"
  }
}
