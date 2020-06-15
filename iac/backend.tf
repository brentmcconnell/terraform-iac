terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name    = "tfstateacct0551"
    container_name          = "proj-java"
    key                     = "terraform.tfstate"
    access_key              = "Zts4LNCq4VJOOTK3FAZOZwaZN3RzuwOozmbpOA9pSDGYNHLBtFXknU0ZtNuZ/eNzNxgAclNj4AH4CcOWGYEvCg=="
  }
}
