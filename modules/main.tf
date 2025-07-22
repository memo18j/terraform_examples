#Crear gupo de recursos
resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = var.rg_name
}

module "vnet" {
  source = "./vnet"
  vnet_location = azurerm_resource_group.rg.location
  vnet_rg_name  = azurerm_resource_group.rg.name
}

module "nsg" {
  source = "./nsg"
  nsg_location = azurerm_resource_group.rg.location
  nsg_rg_name  = azurerm_resource_group.rg.name
}

module "vm" {
  source = "./vm"
  vm_location = azurerm_resource_group.rg.location
  vm_rg_name  = azurerm_resource_group.rg.name
  vm_username = var.vm_username
  vm_password = var.vm_password
  subnet_id  = module.vnet.subnet_id
  public_ip_id = module.vnet.public_ip_id
  network_security_group_id = module.nsg.network_security_group_id
}