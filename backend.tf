terraform {
  backend "s3" {
    bucket = "tiago-terraform-tfstate"
    key    = "linuxtips"
    region = "us-east-2"
  }
}