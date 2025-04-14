
terraform{
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "~>3.0.2"
      }
    }
    required_version = ">=1.1.0"
    backend "azurerm" {
      resource_group_name = "terraform_automate"
      storage_account_name = "staccone"
      container_name = "stacconecontainer1"
      key = "data.terraform.tfstate"
    }
}

provider "azurerm" {
  features {
    
  }
}