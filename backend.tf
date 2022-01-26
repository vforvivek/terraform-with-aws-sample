terraform {
  backend "s3" {
    bucket = "monday-tfstate"
    key    = "monday.tfstate"
    region = "ap-south-1"
  }
}