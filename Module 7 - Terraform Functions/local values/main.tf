provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWIBQPDIZ4SHKBHWF"
  secret_key = "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"
}

locals{
ec2_tags = {
  Owner = "SRE Team",
  Name = "Telugu DevOps Guru"
}

}


resource "aws_instance" "app-1" {
  ami = "ami-0f9ce67dcf718d332"
  instance_type = "t2.micro"
  subnet_id = "subnet-00ad507fea4b45014"
  tags =local.ec2_tags
}

resource "aws_instance" "app-2" {
  ami = "ami-0f9ce67dcf718d332"
  instance_type = "t2.micro"
  subnet_id = "subnet-00ad507fea4b45014"
  tags ={
    Owner = "SRE Team",
    Name = "Telugu DevOps Guru"
      }
}
