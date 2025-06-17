provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "strapi" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  key_name      = var.key_name
  user_data     = file("${path.module}/user-data.sh")

  tags = {
    Name = "Strapi-TF-Task6"
  }
}

