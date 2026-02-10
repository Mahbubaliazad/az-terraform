# Configure the Azure provider, you can have many
# if you use azurerm provider, it's source is hashicorp/azurerm
# short for registry.terraform.io/hashicorp/azurerm


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.58.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "~> 3.7.0"
    }
  }

  required_version = ">= 1.9.0"
}
# configures the provider

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = false
    }
  }
}
provider "azuread" {
  tenant_id = "b73f26ed-ee3b-41b6-b994-482605062e91"
}