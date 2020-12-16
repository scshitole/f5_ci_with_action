 terraform {
  backend "s3" {
    bucket = "scsci-consul-sd"
    key    = "deploy-infrastructure"
    region = "us-east-1"
  }
}

