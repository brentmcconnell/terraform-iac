terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name    = "tfstateacct9805"
    container_name          = "proj-java"
    key                     = "terraform.tfstate"
    access_key              = "AAQXNvSSHvw/4dUCbHUO5Gtt1DEU26ymjotgphT+eAwAbIEkrmBErYMmGQxpIpgYy9ClV297mDoVTc/VTksx+g=="
  }
}
