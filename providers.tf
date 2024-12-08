terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.11.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-be-tf-ks"
    storage_account_name = "sabeks1390ornp4nk6"
    container_name       = "kstfstate"
    key                  = "web08.terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = env.AZURE_SUBSCRIPTION_ID
  features {}
}
