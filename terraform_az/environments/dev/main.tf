terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  # backend "azurerm" {
  #   resource_group_name  = "rg-terraform-state"
  #   storage_account_name = "stterraformstate"
  #   container_name       = "tfstate"
  #   key                  = "dev.terraform.tfstate"
  # }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "vm" {
  source = "../../modules/vm"

  resource_group_name           = azurerm_resource_group.rg.name
  location                      = var.location
  vm_name                       = var.vm_name
  vm_size                       = var.vm_size
  admin_username                = var.admin_username
  admin_password                = var.admin_password
  public_ip_name                = var.public_ip_name
  dns_label_prefix              = var.dns_label_prefix
  network_security_group_name   = var.network_security_group_name
  virtual_network_name          = var.virtual_network_name
  subnet_name                   = var.subnet_name
  nic_name                      = var.nic_name
  os_version                    = var.os_version
  tags                          = var.tags
}

# Random string for unique DNS name
resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
} 