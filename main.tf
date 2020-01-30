// Creates a virtual machine with admin password and additional storage disk
resource "azurerm_virtual_machine" "vm-linux-sshkey" {
  count                            = "${var.vm_count}"
  name                             = "${var.vm_hostname}"
  location                         = "${var.location}"
  resource_group_name              = "${var.resource_group_name}"
  vm_size                          = "${var.vm_size}"
  network_interface_ids            = ["${var.nic_id}"]
#  delete_os_disk_on_termination    = "${var.delete_os_disk_on_termination}"
#  delete_data_disks_on_termination = "${var.delete_data_disk_on_termination}"
#  availability_set_id              = "${var.availability_set_id}"
  
  storage_image_reference {
    publisher = "${var.publisher}"
    offer     = "${var.offer}"
    sku       = "${var.sku}"
    version   = "${var.OS_version}"
  }

  storage_os_disk {
    name          = "${var.vm_hostname}_osdisk"
    create_option = "FromImage"
    managed_disk_type = "${var.os_sa_type}"
  }

  os_profile {
    computer_name  = "${var.vm_hostname}"
    admin_username = "${var.admin_username}"
    
  }

  os_profile_linux_config {
    disable_password_authentication = "True"
    #provision_vm_agent = true
 /*   
    ssh_keys {
      path     = "/home/${var.admin_username}/.ssh/authorized_keys"
      key_data = "${file("${var.ssh_key}")}"
    }
  }
*/
  storage_data_disk {
    name              = "${var.datastorage_diskname}"
    create_option     = "Empty"
    lun               = 0
    disk_size_gb      = "${var.data_disk_size_gb}"
    managed_disk_type = "${var.data_sa_type}"
  }

  boot_diagnostics {
    enabled     = "${var.boot_diagnostics}"
    storage_uri = "${var.boot_diagnostics_storage_uri}"
  }

#  tags = "${var.tags}"

}
