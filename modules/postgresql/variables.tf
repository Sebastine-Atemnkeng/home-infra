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

variable "postgresqlUsername" {
    type        = string
    description = "user name "
    default     = "sebastien"
}

variable "postgresqlPassword" {
    type        = string
    description = "password "
    default     = "sfgkgg46w168gegig79e81w"
}

variable "postgresqlDatabase" {
    type        = string
    description = "database name"
    default     = "talos-home-postgresql-db"
}