resource "proxmox_vm_qemu" "kubernetes-master_vm" {
  count       = 1
  name        = "talos-kubenetes-master-${count.index + 1}"
  vmid        = count.index + 600
  target_node = "CyberOps"
  clone       = "Ubuntu23-template"
  full_clone  = true

  onboot = true
  tags   = "kubernetes,master"

  # System (These settings will override the template's settings)
  memory = 30096
  cores  = 2
  cpu    = "host"
  scsihw = "virtio-scsi-single"

  # LAN
  network {
    model    = "virtio"
    bridge   = "vmbr1"
    firewall = false
  }
}

resource "proxmox_vm_qemu" "kubernetes-worker_vm" {
  count       = 3
  name        = "talos-kubenetes-worker-${count.index + 1}"
  vmid        = count.index + 700
  target_node = "CyberOps"
  clone       = "Ubuntu23-template"
  full_clone  = true

  onboot = true
  tags   = "kubernetes,worker"

  # System (These settings will override the template's settings)
  memory = 10048
  cores  = 2
  cpu    = "host"
  scsihw = "virtio-scsi-single"

  # LAN
  network {
    model    = "virtio"
    bridge   = "vmbr1"
    firewall = false
  }
}
