# Environment
########################################################################

variable "pm_api_url" {
  description = "The Proxmox API URL."
  type        = string
  default = "your-ip:8006/api2/json"
}

variable "pm_user" {
    type        = string
    description = "username to connect to proxmox"
    default     = "root@pam"
}

variable "pm_user" {}
