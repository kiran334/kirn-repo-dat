# # resource "azurerm_resource_group" "example" {
# #   name     = "example-resources"
# #   location = "West Europe"
# # }



# resource "azurerm_sql_server" "example" {
#   name                         = "myexamplesqlserver"
#   resource_group_name          = var.resource_group_name
#   location                     = var.location
#   version                      = "12.0"
#   administrator_login          = var.administrator_login
#   administrator_login_password = var.administrator_login_password

#   tags = {
#     environment = "production"
#   }
# }

# # resource "azurerm_storage_account" "example" {
# #   name                     = "examplesa"
# #   resource_group_name      = azurerm_resource_group.example.name
# #   location                 = azurerm_resource_group.example.location
# #   account_tier             = "Standard"
# #   account_replication_type = "LRS"
# # }

# resource "azurerm_sql_database" "example" {
#   name                = "myexamplesqldatabase"
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   server_name         = azurerm_sql_server.example.name

#   tags = {
#     environment = "production"
#   }
# }