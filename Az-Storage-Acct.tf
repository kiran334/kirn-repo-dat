resource "azurerm_resource_group" "demo" {
  name     = "dev-rg1119"
  location = "East US2"
}

##  Demo now
resource "azurerm_storage_account" "StorageAccountDemo" {
  name                     = "kirantestsa"
  resource_group_name      = azurerm_resource_group.demo.name
  location                 = azurerm_resource_group.demo.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    video = "azure"
    channel = "CloudQuickLabs"
  }
}