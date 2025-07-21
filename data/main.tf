data "azurerm_resource_group" "imported_rg" {
  name = "TerraformStates"
}

resource "azurerm_storage_account" "state_storage" {
  name                     = "tfstatestorage"
  resource_group_name      = data.azurerm_resource_group.imported_rg.name
  location                 = data.azurerm_resource_group.imported_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "TerraformState"
  }
  
}