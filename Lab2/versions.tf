terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.23.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.7.1"
    }

  }
}


provider "azurerm" {
  features {}
  //subscription_id = "4e9f9d55-31f5-47d9-b5ac-755e3e5dbbe0"
}
