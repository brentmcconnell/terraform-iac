terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name    = "tfstateacct0733"
    container_name          = "proj-java"
    key                     = "terraform.tfstate"
    access_key              = "eJnDEc1PC6cy81VxZa1PYFAP1FkfvJ5I/TUBGPyIOX08O2xT3NjnMAq5QCb+sm2KuGtek241JuSXN1xG8a3EOg=="
  }
}
