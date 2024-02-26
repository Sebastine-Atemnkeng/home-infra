terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc1" 
    }
  }
}

provider "proxmox" {
  pm_api_url = "https://10.0.0.53:8006/api2/json"
  pm_user         = var.pm_user
  pm_password     = var.pm_pass
  pm_tls_insecure = true
}

provider "kubernetes" {
  config_path    = "/Users/sebastienvetel/workspace/kubeconfig"
}

provider "helm" {
  kubernetes {
    config_path = "/Users/sebastienvetel/workspace/kubeconfig" // Your kubeconfig path
  }
}
