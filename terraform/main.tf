terraform {
  backend "s3" {
    bucket  = "bageltech-io-terraform"
    key     = "tfstate"
    region  = "us-east-1"
  }
}
