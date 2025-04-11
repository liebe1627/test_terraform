resource "azurerm_resource_group" "rg5" {
  name = var.res_grp_name.name
  location = var.res_grp_name.location
}

resource "azurerm_storage_account" "storage1" {
  name = "${random_pet.prefix.id}-storage"
  resource_group_name = azurerm_resource_group.rg5.name
  location = azurerm_resource_group.rg5.location
  account_tier = var.storage_account.tier
  account_replication_type = var.storage_account.replication
}

resource "azurerm_storage_container" "storage_container1" {
  name = "${azurerm_storage_account.storage1.name}-container1"
  storage_account_id = azurerm_storage_account.storage1.id
  container_access_type = var.container.access
}

resource "random_pet" "prefix" {
  prefix = var.res_grp_name.name
  length = 1
}