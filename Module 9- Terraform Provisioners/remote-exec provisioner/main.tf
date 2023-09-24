provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWIBQPDIZ4SHKBHWF"
  secret_key = "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"
}

resource "aws_instance" "ec2" {
  ami         = "ami-0f9ce67dcf718d332"
  instance_type = "t2.medium"
  subnet_id     = "subnet-0422aa31d4c62de2c"
  key_name = "test"
  connection {
    type        = "ssh"
    user        = "ec2-user"  # The username for the remote instance (depends on the image used)
    private_key = file("${path.module}/test.pem")  # Replace this with the path to your PEM file
    host        = self.public_ip  # Connect using the public IP of the instance
  }
  provisioner "remote-exec" {
            inline = [
              "sudo touch murali.txt",
              "sudo touch /tmpdevops.txt",
              "sudo touch git.txt"

            ]
          }


  tags = {
    Name = "tf-example"
  }
}
