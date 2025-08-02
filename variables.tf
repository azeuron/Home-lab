variable "proxmox_host" {}
variable "proxmox_node" { default = "pve" }
variable "proxmox_token_id" {}
variable "proxmox_token_secret" {}

variable "vm_name" { default = "test-vm" }
variable "template_name" { default = "debian-template" }
variable "vm_cores" { default = 2 }
variable "vm_memory" { default = 2048 }
variable "vm_disk_size" { default = "10G" }
variable "vm_storage" { default = "local-lvm" }
variable "vm_ip" { default = "192.168.1.50" }
variable "vm_gateway" { default = "192.168.1.1" }
variable "vm_user" { default = "debian" }
