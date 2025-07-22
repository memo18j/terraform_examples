
provider "azurerm" {
  features {}
  subscription_id = "dbed9d1f-d88a-40a9-bbbd-209c9f3d1e5e"
}

variable "rg_name" {
  type = string
  default = "GrupoRecursos"
}

locals {
  group_name = "jgpc${var.rg_name}"
}

resource "azurerm_resource_group" "rg" {
  name     = local.group_name
  location = "southeastasia"
  
}
 