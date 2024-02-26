output "kubernetes_master_vm_name" {
  value = proxmox_vm_qemu.kubernetes-master_vm[*].name
  description = "The name of the Kubernetes master VM."
}

output "kubernetes_master_vm_id" {
  value = proxmox_vm_qemu.kubernetes-master_vm[*].vmid
  description = "The VM ID of the Kubernetes master VM."
}

output "kubernetes_worker_vm_names" {
  value = proxmox_vm_qemu.kubernetes-worker_vm[*].name
  description = "The names of the Kubernetes worker VMs."
}

output "kubernetes_worker_vm_ids" {
  value = proxmox_vm_qemu.kubernetes-worker_vm[*].vmid
  description = "The VM IDs of the Kubernetes worker VMs."
}
