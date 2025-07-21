terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }

    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "2.0.0-preview3"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "dbed9d1f-d88a-40a9-bbbd-209c9f3d1e5e"
}
