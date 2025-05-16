output "vm_id" {
  description = "The ID of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_name" {
  description = "The name of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "vm_public_ip" {
  description = "The public IP address of the Virtual Machine"
  value       = azurerm_public_ip.vm_public_ip.ip_address
}

output "vm_private_ip" {
  description = "The private IP address of the Virtual Machine"
  value       = azurerm_network_interface.vm_nic.private_ip_address
}

output "vm_dns_name" {
  description = "The DNS name of the Virtual Machine"
  value       = azurerm_public_ip.vm_public_ip.fqdn
}

output "resource_group_name" {
  description = "The name of the resource group"
  value       = var.resource_group_name
}

output "location" {
  description = "The location of the resources"
  value       = var.location
}

output "vnet_name" {
  description = "The name of the virtual network"
  value       = azurerm_virtual_network.vm_vnet.name
}

output "vnet_id" {
  description = "The ID of the virtual network"
  value       = azurerm_virtual_network.vm_vnet.id
}

output "subnet_name" {
  description = "The name of the subnet"
  value       = azurerm_subnet.vm_subnet.name
}

output "subnet_id" {
  description = "The ID of the subnet"
  value       = azurerm_subnet.vm_subnet.id
}

output "nsg_name" {
  description = "The name of the network security group"
  value       = azurerm_network_security_group.vm_nsg.name
}

output "nsg_id" {
  description = "The ID of the network security group"
  value       = azurerm_network_security_group.vm_nsg.id
}

output "data_disk_id" {
  description = "The ID of the data disk"
  value       = azurerm_managed_disk.data_disk.id
}

output "data_disk_name" {
  description = "The name of the data disk"
  value       = azurerm_managed_disk.data_disk.name
}

output "storage_account_name" {
  description = "The name of the storage account for boot diagnostics"
  value       = azurerm_storage_account.boot_diagnostics.name
}

output "storage_account_id" {
  description = "The ID of the storage account for boot diagnostics"
  value       = azurerm_storage_account.boot_diagnostics.id
}

output "admin_username" {
  description = "The admin username of the Virtual Machine"
  value       = var.admin_username
  sensitive   = true
} 