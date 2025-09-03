terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
backend "azurerm" {
    resource_group_name  = "prod2908"
    storage_account_name = "prodstorage2908"
    container_name       = "prodcontainer2809" 
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {

  features {}
  subscription_id = "b3b6b7ed-0b15-49ca-b3ce-092e07ca3fef"
}