provider "bigip" {
  address  = data.terraform_remote_state.consul_sd.outputs.F5_UI
  username = data.terraform_remote_state.consul_sd.outputs.F5_Username
  password = data.terraform_remote_state.consul_sd.outputs.F5_Password
}
# pin to 1.1.2
terraform {
  required_providers {
    bigip = {
      source = "F5Networks/bigip"
      version = "1.5.0"
    }
  }
}

# deploy application using as3
resource "bigip_as3" "nginx" {
  as3_json    = file("nginx.json")
#  depends_on  = [null_resource.install_as3]
}
