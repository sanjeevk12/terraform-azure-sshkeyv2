output "vm_id" {
  value = "${azurerm_virtual_machine.vm-linux-sshkey.*.id}"
}