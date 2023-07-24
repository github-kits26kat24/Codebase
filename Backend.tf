terraform {
  backend "s3" {
    //bucket = "Kay-terraform-state-files"
    //key    = "kitskat/terraform.tfstate"
    bucket = var.bucket
    key = var.key
    region = "eu-west-1"
  }
}