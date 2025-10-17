variable "name" {
  description = "The name of the security group"
  type        = string
}

variable "description" {
  description = "Description of the security group"
  type        = string
  default     = ""
}

variable "vswitch_type" {
  description = "Type of vswitch (e.g., LinuxBridge or OvnDpdk)"
  type        = string
  default     = "LinuxBridge"
}

variable "ip_version" {
  description = "IP version for the security group (4 or 6)"
  type        = number
  default     = 4
}

variable "sdn_controller_name" {
  description = "Name or IP of the SDN controller (required for OvnDpdk type)"
  type        = string
  default     = null
}
