terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name    = "tfstateacct1052"
    container_name          = "proj-java"
    key                     = "terraform.tfstate"
    access_key              = "XGFwAf/hcc2NFucSCTAT6lSg1TQZWnlhhYZSCA7HG8BIqZczI57WgDVQ2c8r6np7sQEKk44Ek0d9Eej+X1VAEw=="
  }
}
