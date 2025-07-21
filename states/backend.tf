terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformStates"
    storage_account_name = "statejgpcstorage"
    container_name       = "states"
    key                  = "states.tfstate"
  }
}