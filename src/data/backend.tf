resource "azurerm_resource_group" "rg5" {
  name = var.res_grp_name.name
  location = var.res_grp_name.location
}

resource "azurerm_storage_account" "storage1" {
  
}

resource "random_pet" "prefix" {
  prefix = var.res_grp_name.name
  length = 1
}