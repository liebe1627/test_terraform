resource "azurerm_resource_group" "rg5" {
  name = var.res_grp_name.name
  location = var.res_grp_name.location
}

resource "azurerm_storage_account" "st1" {
  name = "storageaccountno1"
  resource_group_name = azurerm_resource_group.rg5.name
  location = azurerm_resource_group.rg5.location
  account_tier = var.storage_account.tier
  account_replication_type = var.storage_account.replication
}

resource "azurerm_storage_container" "storage_container1" {
  name = "${azurerm_storage_account.st1.name}container1"
  container_access_type = var.container.access
  storage_account_name = azurerm_storage_account.st1.name
}

resource "random_pet" "prefix" {
  prefix = var.res_grp_name.name
  length = 1
}