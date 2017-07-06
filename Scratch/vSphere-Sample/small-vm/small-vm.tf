# small virtual machine spec
resource "vsphere_virtual_machine" "tf-ws16-small" {
    name = "${var.vsphere_vm_small_name}"
    folder = "${var.vsphere_vm_small_folder}"
    description = "Deployed via Terraform. Size: Small"
    vcpu   = 2
    memory = 4096

    network_interface {
        label = "${var.vsphere_vm_small_network}"
    }

    disk {
        datastore = "vol-test-dev"
        template = "Templates/ws16-core-small"
    }
}