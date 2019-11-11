provider "aws" {
  region = "us-east-1"
}

data "terraform_remote_state" "ec2" {
  backend = "s3"

  config = {
    bucket = "occ-terraform-backend"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "sample" {
  ami           = "ami-00dc79254d0461090" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "t2.micro"

  tags = {
    Name = "Test AMI"
  }
}
