provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWIBQPDIZ4SHKBHWF"
  secret_key = "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"
}

resource "aws_iam_user" "env" {
  name = "dev"
  path = "/system/"

  tags = {
    Name = "dev"
  }
}

output "iam_names"{
  value = aws_iam_user.env.name
}
