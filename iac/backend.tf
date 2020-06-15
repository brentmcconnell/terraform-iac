terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name    = "tfstateacct2758"
    container_name          = "proj-java"
    key                     = "terraform.tfstate"
    access_key              = "w1IXhsbvh3tf+OKytbxhs76zqTR0vx6QdiFugRAB7m2TJwN9+/cHaNpLkt0pdV4lIwcMphYj4pFeZPFhCzHTfA=="
  }
}
