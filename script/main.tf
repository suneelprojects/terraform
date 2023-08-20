provider "aws" {
region = "us-east-1"
access_key = "AKIA5Y5XFHCUO4ZWSLLR"
  secret_key = "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"
}
resource "aws_instance" "instance-1" {
ami = "ami-04d29b6f966df1537"
instance_type = "t2.nano"
}

resource "aws_instance" "instance-2" {
ami = "ami-04d29b6f966df1537"
instance_type = "t2.micro"
}
