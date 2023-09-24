
provider "aws" {
  region  = "us-east-1"
  access_key = "AKIAWIBQPDIZ3MRB3UKL"
  secret_key = "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"
  alias ="east"
}

provider "aws" {
  region  = "us-east-2"
  access_key = "AKIAWIBQPDIZ3MRB3UKL"
  secret_key = "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"
  alias = "west"
}


resource "aws_instance" "east-instance" {
provider = aws.east
  ami           = "ami-0453898e98046c639"
  instance_type = "t2.micro"
subnet_id = "subnet-0a1a54031bf95d8e4"

  tags = {
    Name = "East-instance"
  }
}

resource "aws_instance" "west-instance" {
provider = aws.west
  ami           = "ami-04e35eeae7a7c5883"
  instance_type = "t2.micro"
subnet_id = "subnet-04ab09bcdd4e87de1"

  tags = {
    Name = "West-instance"
  }
}
