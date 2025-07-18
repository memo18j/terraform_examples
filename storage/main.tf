terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "dbed9d1f-d88a-40a9-bbbd-209c9f3d1e5e"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-storage_jgpc"
  location = "brazilsouth"
}

resource "azurerm_storage_account" "storage_example" {
  name                     = "jgpcdev"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  public_network_access_enabled = false

  tags = {
    environment = "staging"
  }
}

output "conexion_string" {
  value = azurerm_storage_account.storage_example.primary_connection_string
  sensitive = true
}