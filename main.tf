# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.91.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

# create virtual machine

resource "azurerm_data_factory" "example" {

  name = "my-adf1"
  resource_group_name = azurerm_resource_group.example.name
  location = azurerm_resource_group.example.location

  
}
