terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
}
# Set the provider configuration for Azure
provider "azurerm" {
  skip_provider_registration = true
  features {}
}