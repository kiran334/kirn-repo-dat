# variable "client_secret" {
# }


terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  # cloud {
  #   organization = "spk545"
  #   workspaces {
  #     name = "Kiran_WS_API_type"
  #   }
  # }
}

terraform {
  backend "azurerm" {
    resource_group_name   = "dev-rg"
    storage_account_name   = "sadevaccttest"
    container_name         = "tffiles"
    key                    = "terraform_sql.tfstate"
  }
}
provider "azurerm" {
  features {}
  client_id       = "577044ae-bd80-462b-b9f2-6cdc89025af8"
  client_secret   = "b0r8Q~y8lemzqlx3tMtZvrweQovBWRNW1Vhkic8_"
  tenant_id       = "78959ae4-3fb1-4d7b-8e35-f92abe2324e4"
  subscription_id = "f6ded170-b6aa-473f-bd46-2623b0114335"
}