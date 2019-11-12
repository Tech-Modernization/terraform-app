terraform {
  backend "s3" {
    bucket = "occ-terraform-backend"
    key    = "terraform_tf_env.tfstate"
    region = "us-east-1"
  }
}
