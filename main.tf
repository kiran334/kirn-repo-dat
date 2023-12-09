# variable "client_secret" {
# }


terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.0.0"
    }
  }


#   cloud {
#     organization = "spk545"
#     workspaces {
#       name = "Kiran_WS_API_type"
#     }
#   }
}

terraform {
  backend "remote" {
    organization = "spk545"
    workspaces {
      name = "kiran-repo-dat-workspace"
    }
  }
}

# terraform {
#   backend "azurerm" {
#     resource_group_name   = "dev-rg"
#     storage_account_name   = "sadevaccttest"
#     container_name         = "tffiles"
#     key                    = "terraform_sql.tfstate"
#   }
# }
provider "azurerm" {
  features {}
  
}