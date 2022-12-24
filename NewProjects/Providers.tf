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

  subscription_id= ac5c2d62-c6fa-452f-92dc-fa66cee24f8c,
    tenant_id= 194d8e87-845f-403d-88f5-842b9c9913fa
    client_id= 985a5044-9996-4538-abb3-d30018f90833
    client_secret= c7I8Q~35OsQtsAB6OcYv7NY00qNc5ppYjxYiha-n
}

    
