terraform {
  backend "s3" {
    bucket     = "raiaan-remotebackend-bucket1"
    key        = "remotetfstate"
    region     = "us-east-2"
    dynamodb_table = "s3-state-lock"
  }
}
