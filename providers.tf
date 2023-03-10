terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.36.0"
    }
  }

 backend "remote" {
    organization = "deophidir"
 
    workspaces {
      name = "terraform-test"
    }
  }
}

provider "azurerm" {
  features {}
}
