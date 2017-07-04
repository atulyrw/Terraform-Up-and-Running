# setup connection
provider "vsphere" {
   user           = "${var.vsphere_user}" # username@domain.local
   password       = "${var.vsphere_password}"
   vsphere_server = "${var.vsphere_server}" # FQDN of vCenter

   # support for Self-Signed Certs
   allow_unverified_ssl = true
}

module "base-infra" {
    source = "../base-infra"
}

module "base-vm" {
    source = "../base-vm"
}