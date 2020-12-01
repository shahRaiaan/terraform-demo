terraform {
required_version = "<=0.13.5"
required_providers {
aws = "3.14.1"
}
}
provider "aws" {
  region     = "us-east-2"
  access_key = file("../../access_key.txt")
  secret_key = file("../../secret_key.txt")
}
