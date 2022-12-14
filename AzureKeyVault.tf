
# RG creation 
resource "azurerm_resource_group" "RG-githubaction-azure" {
  name     = "rg-githubaction-cloudquickpocs"
  location = "northeurope"
}

# Retrieve data
data "azurerm_client_config" "current" {}

# Create Keyvautlt
resource "azurerm_key_vault" "quickpocskeyvault" {
  name                       = "quickpocskeyvault001"
  location                   = azurerm_resource_group.RG-githubaction-azure.location
  resource_group_name        = azurerm_resource_group.RG-githubaction-azure.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "premium"
  soft_delete_enabled        = true
  soft_delete_retention_days = 7

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "create",
      "get",
    ]

    secret_permissions = [
      "set",
      "get",
      "delete",
      "purge",
      "recover"
    ]
  }
}

# Create Keyvautlt secrete
resource "azurerm_key_vault_secret" "quickpocskeyvaultsecrete" {
  name         = "testsecrete"
  value        = "000000"
  key_vault_id = azurerm_key_vault.quickpocskeyvault.id
}