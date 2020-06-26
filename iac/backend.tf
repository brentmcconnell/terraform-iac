terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name    = "tfstateacct2141"
    container_name          = "tfcont-2141"
    key                     = "terraform.tfstate"
    access_key              = "xxxxxxxxxxxxxxxxxxxx+V8AdKnYT7P0bt2wPsZ+vWFnpRskQ0B4ycL6M/HVgl/qQ=="
  }
}
