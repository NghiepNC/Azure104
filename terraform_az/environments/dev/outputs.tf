output "vm_id" {
  description = "The ID of the Virtual Machine"
  value       = module.vm.vm_id
}

output "vm_name" {
  description = "The name of the Virtual Machine"
  value       = module.vm.vm_name
}

output "vm_public_ip" {
  description = "The public IP address of the Virtual Machine"
  value       = module.vm.vm_public_ip
}

output "vm_private_ip" {
  description = "The private IP address of the Virtual Machine"
  value       = module.vm.vm_private_ip
}

output "vm_dns_name" {
  description = "The DNS name of the Virtual Machine"
  value       = module.vm.vm_dns_name
}

output "resource_group_name" {
  description = "The name of the resource group"
  value       = module.vm.resource_group_name
}

output "location" {
  description = "The location of the resources"
  value       = module.vm.location
}

output "vnet_name" {
  description = "The name of the virtual network"
  value       = module.vm.vnet_name
}

output "vnet_id" {
  description = "The ID of the virtual network"
  value       = module.vm.vnet_id
}

output "subnet_name" {
  description = "The name of the subnet"
  value       = module.vm.subnet_name
}

output "subnet_id" {
  description = "The ID of the subnet"
  value       = module.vm.subnet_id
}

output "nsg_name" {
  description = "The name of the network security group"
  value       = module.vm.nsg_name
}

output "nsg_id" {
  description = "The ID of the network security group"
  value       = module.vm.nsg_id
}

output "data_disk_id" {
  description = "The ID of the data disk"
  value       = module.vm.data_disk_id
}

output "data_disk_name" {
  description = "The name of the data disk"
  value       = module.vm.data_disk_name
}

output "storage_account_name" {
  description = "The name of the storage account for boot diagnostics"
  value       = module.vm.storage_account_name
}

output "storage_account_id" {
  description = "The ID of the storage account for boot diagnostics"
  value       = module.vm.storage_account_id
}

output "admin_username" {
  description = "The admin username of the Virtual Machine"
  value       = module.vm.admin_username
  sensitive   = true
} 