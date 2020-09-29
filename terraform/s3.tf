 terraform {
  backend "s3" {
    bucket = "dgarrison-t7-consul-sd"
    key    = "deploy-infrastructure"
    region = "us-east-1"
  }
}

