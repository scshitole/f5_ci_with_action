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


/*// Using  provisioner to install as3 rpm on bigip pass arguments as BIG-IP IP address, credentials and name of the rpm 
resource "null_resource" "install_as3" {
  provisioner "local-exec" {
    command = "./install_as3.sh ${var.address} ${var.username}:${var.password} ${var.as3_rpm}"
  }
}*/

# deploy application using as3
resource "bigip_as3" "nginx" {
  as3_json    = file("nginx.json")
  #depends_on  = [null_resource.install_as3]
}
