terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name    = "tfstateacct0442"
    container_name          = "proj-java"
    key                     = "terraform.tfstate"
    access_key              = "XqhmfBsWR4r4FQY1TeQiiSynkKgD+Jfvgd02IdbBqZblayHYNUQlSz58c1Wjt36lm9qoQGO+W/L+83LSePXt0A=="
  }
}
