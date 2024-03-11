# Environment
########################################################################

variable "pm_api_url" {
  description = "The Proxmox API URL."
  type        = string
  default = "https://10.0.0.53:8006/api2/json"
}

variable "pm_user" {
    type        = string
    description = "username to connect to proxmox"
    default     = "root@pam"
}

variable "pm_pass" {
    type        = string
    description = "user password "
    default     = "BASICit77364490"
}

variable "namespace" {
    type        = string
    description = "namespace for deployment"
    default     = "core"
}