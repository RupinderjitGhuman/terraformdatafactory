terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
  backend "azurerm" {
    resource_group_name = var.bkstrgrg
    storage_account_name = var.bkstrg
    container_name = var.bkcontainer
    key = var.bkstrgkey
  }
}
# Set the provider configuration for Azure
provider "azurerm" {
  skip_provider_registration = true
  features {}
}