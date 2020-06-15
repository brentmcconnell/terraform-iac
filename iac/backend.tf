terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name    = "tfstateacct2141"
    container_name          = "tfcont-2141"
    key                     = "terraform.tfstate"
    access_key              = "o7BgPP7DOJ3WQPKrSWQAc8z6iWx9E9UaviyWiCB85+V8AdKnYT7P0bt2wPsZ+vWFnpRskQ0B4ycL6M/HVgl/qQ=="
  }
}
