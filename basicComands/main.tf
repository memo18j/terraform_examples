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
  location = var.location
  name     = var.rg_name
}
