terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name    = "project12345"
    container_name          = "proj-java"
    key                     = "terraform.tfstate"
  }
}
