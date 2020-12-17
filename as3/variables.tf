variable "address" {}
variable "port" {}
variable "username" {}
variable "password" {}
variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}
variable "as3_rpm" {
  default = "f5-appsvcs-3.24.0-5.noarch.rpm"
}