provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample" {
  ami           = "ami-00dc79254d0461090" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "${var.instance_type}"

  tags = {
    Name = "${var.instance_name}"
  }
}
