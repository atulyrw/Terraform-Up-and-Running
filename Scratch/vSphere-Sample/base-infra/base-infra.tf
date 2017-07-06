# create a folder
resource "vsphere_folder" "terraform-test" {
    name = "terraform-test"
    datacenter = "DC1"
    description = "Terraform Test Folder"
    path = "terraform-test"
}