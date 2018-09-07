# setup connection
provider "vsphere" {
   user           = "${var.vsphere_user}" # username@domain.local
   password       = "${var.vsphere_password}"
   vsphere_server = "${var.vsphere_vcenter}" # FQDN of vCenter
# support for Self-Signed Certs
   allow_unverified_ssl = true
}

module "base-infra" {
    source = "../base-infra"
}

module "small-vm" {
    source                   = "../small-vm"
    vsphere_vm_small_name    = "${var.vsphere_vmname}"
    vsphere_vm_small_folder  = "${vsphere-folder.terraform-test.path}"
    vsphere_vm_small_network = "${var.vsphere_vmnetwork}"
}