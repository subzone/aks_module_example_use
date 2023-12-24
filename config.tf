terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.43.0" # was 2.46.1
    }
  }
  backend "local" {
    path = "./aks.tfstate"
  }
}