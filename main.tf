terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d6e97a3d-c31e-46d4-a7a5-6986d4cfa693"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RG1"
    storage_account_name = "jenkinsstateyourname"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "RG2"
  location = "westeurope"
}
