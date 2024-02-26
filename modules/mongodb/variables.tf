# Environment
########################################################################

variable "pm_api_url" {
  description = "The Proxmox API URL."
  type        = string
  default = "https://your-ip:8006/api2/json"
}

variable "pm_user" {
    type        = string
    description = "username to connect to proxmox"
    default     = "root@pam"
}

variable "pm_pass" {
    type        = string
    description = "user password "
    default     = ""
}

variable "auth.username" {
    type        = string
    description = "user name "
    default     = "sebastien"
}

variable "auth.password" {
    type        = string
    description = "password "
    default     = "ljheh44r9846hreeg5464we6"
}

variable "auth.database" {
    type        = string
    description = "database name"
    default     = "talos-home-mongodb"
}