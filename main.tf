terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-platform-shared"
    storage_account_name = "tfstatecloudlab1"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

# Shared resource group
resource "azurerm_resource_group" "shared" {
  name     = "rg-platform-shared"
  location = var.location
}

# Company-specific resource groups
resource "azurerm_resource_group" "companies" {
  for_each = toset(var.companies)
  name     = "rg-${each.key}-dev"
  location = var.location
}