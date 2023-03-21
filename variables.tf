variable "machine_type" {
  type = string
}

variable "windows_vm_name" {
  type = string
}

variable "windows_2022_sku" {
  type = string
  default = "windows-cloud/windows-2022"
}


variable "linux_tag" {
  type = string
}

variable "windows_tag" {
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

variable "os_label" {
  type    = string
  default = "ubuntu"
}

variable "gce_svc_account" {
  type = string
}

variable "gce_svc_account_email" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

variable "network_name" {
  type = string
}
