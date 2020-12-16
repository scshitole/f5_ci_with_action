variable "prefix" {
  description = "prefix for resources created"
  default     = "scsci"
}
variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "f5_ami_search_name" {
  description = "BIG-IP AMI name to search for"
  type        = string
  default     = "F5 BIGIP-15.1.* PAYG-Good 25Mbps*"
}
