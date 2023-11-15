terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  cloud {
    organization = "spk545"
    workspaces {
      name = "Kiran_WS_API_type"
    }
  }
}

provider "azurerm" {
  features {}
}