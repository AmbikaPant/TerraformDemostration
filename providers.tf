terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.19.1"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "2ac5dacb-73c9-43d2-bcce-c8005163201b"
  tenant_id       = "46d04a25-edab-4679-9dc5-c85fe2d12a3d"
  client_id       = "e7430c15-427f-415d-8181-d98a88ab2900"
  client_secret   = "~IR8Q~GZk-SgPmB0wiMtVRZiSFOkg_ngi1zs5c06"
}

# Your code goes here