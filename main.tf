# ARM provider block -main
#provider "azurerm" {
#  version = "~>2.0"
#  features {}
#}
# Terraform backend configuration block -precreated
terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-rg"
    storage_account_name = "myterraformsadev"
    container_name       = "tfstatefile"
    key                  = "keyvault.tfstate"
  }
}