resource "azurerm_resource_group" "tata1" {
  name     = "prod-prabhat-resource-group"
  location = "westeurope"
}

resource "azurerm_storage_account" "prabhatstorageacc" {
  name                     = "prod-prabhatstorageacc"
  resource_group_name      = azurerm_resource_group.tata1.name
  location                 = azurerm_resource_group.tata1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

