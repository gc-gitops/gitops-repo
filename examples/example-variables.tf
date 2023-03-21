variable "machine_type" {
  type = string
}

variable "project_id" {
  type = string
}

variable "project_region" {
  type = string
}

variable "project_zone" {
  type = string
}

variable "linux_vm_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "linux_os" {
  type    = string
  default = "ubuntu-os-cloud/ubuntu-2004-lts"
}

variable "linux_tag" {
  type    = string
}

variable "vm_size" {
  type    = number
  default = 78
}

variable "os_label" {
  type    = string
  default = "ubuntu"
}

variable "gce_svc_account" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

variable "network_name" {
  type = string
}
