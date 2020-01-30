variable "vm_count" {
  description = "Count of Virtual Machine to be deployed"
}

variable "vm_hostname" {
  description = "Custom name for the new Virtual Machine"
}

variable "location" {
  description = "The location/region where vm will be created. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  description = "The name of the resource group in which the vm will be created"
}

variable "vm_size" {
  description = "Specifies the size of the virtual machine."
}

variable "nic_id" {
  description = "Specifies the name of the Network Interface"
}

# variable "nic_private_ip_address" {
#   description = "Specifies private IP of the Network Interface"
# }

variable "delete_os_disk_on_termination" {
  description = "Set true to delete OS machine on deletion"
  default     = "True"
}

variable "delete_data_disk_on_termination" {
  description = "Set true to delete storage disks on deletion"
  default     = "True"
}

variable "availability_set_id" {
  description = "AV Set for the VM"
}
variable "publisher" {
  description = "Publisher for the OS"
}

variable "offer" {
  description = "OS Name"
}

variable "sku" {
  description = "OS Major version"
}

variable "OS_version" {
  description = "OS minor version"
}

variable "admin_username" {
  description = "The admin username of the VM that will be deployed"
}

variable "admin_password" {
  description = "The password of the machine that will be deployed"
  default     = "NA"
}
 variable "ssh_key" {
   description = "The public ssh key to be used for running shell script"
 }
variable "ssh_private_key" {
  description = "The private ssh key to be used for running shell script"
}
variable "datastorage_diskname" {
  description = "storage disk name"
}

variable "data_disk_size_gb" {
  description = "Storage data disk size"
}
variable "os_sa_type" {
  description = "OS Disk Storage Account type"
}
variable "data_sa_type" {
  description = "Data Disk Storage Account type"
}

variable "boot_diagnostics" {
  description = "(Optional) Enable or Disable boot diagnostics"
}

variable "boot_diagnostics_storage_uri" {
  description = "(Optional) Storage Account primary blob uri"
}

variable tags {
  type = "map"
}
