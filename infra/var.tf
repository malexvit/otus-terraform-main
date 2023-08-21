variable "vpc_prefix" {
  type = string
  default = "otus-learn-"
  description = "prefix VPC name"
}

variable "zone" {
  type = string
  default = "ru-central1-b"
  description = "zone"
}


variable "image_id" {
  description = "Default image ID Debian 11"
  default     = "fd8ehdcbts4g5svudn7p" # debian-11-v20210901
  type        = string
}


variable "vm_prefix" {
  description = "prefix VM name"
  default = "otus-learn-"
  type = string
}

variable "cpu" {
  description = "VM CPU count"
  default     = 2
  type        = number
}

variable "memory" {
  description = "VM RAM size"
  default     = 4
  type        = number
}


variable "core_fraction" {
  description = "Core fraction, default 20%"
  default     = 20
  type        = number
}

variable "disk" {
  description = "VM Disk size"
  default     = 20
  type        = number
}

variable "nat" {
  type    = bool
  default = true
}

variable "platform_id" {
  type    = string
  default = "standard-v3"
}

variable "internal_ip_address" {
  type    = string
  default = null
}

variable "nat_ip_address" {
  type    = string
  default = null
}

variable "disk_type" {
  description = "Disk type"
  type        = string
  default     = "network-ssd"
}

variable "ssh_key" {
  type        = string
  description = "cloud-config ssh key"
  default = ""
}