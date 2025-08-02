terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc4"
    }
  }
}

provider "proxmox" {
  pm_api_url      = "https://${var.proxmox_host}:8006/api2/json"
  pm_api_token_id = var.proxmox_token_id
  pm_api_token_secret = var.proxmox_token_secret
  pm_tls_insecure = true
}

resource "proxmox_vm_qemu" "test_vm" {
  name        = var.vm_name
  target_node = var.proxmox_node
  clone       = var.template_name
  os_type     = "cloud-init"
  cores       = var.vm_cores
  sockets     = 1
  memory      = var.vm_memory
  scsihw      = "virtio-scsi-pci"
  bootdisk    = "scsi0"

  disk {
    size = var.vm_disk_size
    type = "scsi"
    storage = var.vm_storage
  }

  network {
    model = "virtio"
    bridge = "vmbr0"
  }

  ipconfig0 = "ip=${var.vm_ip}/24,gw=${var.vm_gateway}"
  ssh_user  = var.vm_user
}
