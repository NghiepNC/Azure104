variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-vm-demo-001"
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  default     = "vm-demo-001"
}

variable "admin_username" {
  description = "Username for the VM"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Password for the VM"
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_B2s"
}

variable "public_ip_name" {
  description = "Name of the public IP"
  type        = string
  default     = "pip-vm-demo-001"
}

variable "dns_label_prefix" {
  description = "DNS label prefix for the public IP"
  type        = string
  default     = "vm-demo-001"
}

variable "network_security_group_name" {
  description = "Name of the network security group"
  type        = string
  default     = "nsg-vm-demo-001"
}

variable "virtual_network_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "vnet-vm-demo-001"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "snet-vm-demo-001"
}

variable "nic_name" {
  description = "Name of the network interface"
  type        = string
  default     = "nic-vm-demo-001"
}

variable "os_version" {
  description = "OS version"
  type        = string
  default     = "18.04-LTS"
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    Environment = "Development"
    Project     = "VM Demo"
  }
} 