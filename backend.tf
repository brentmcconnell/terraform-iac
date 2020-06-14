terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name    = "tfstateacct6853"
    container_name          = "proj-java"
    key                     = "terraform.tfstate"
    access_key              = "5jaJY9+IrLK6/Mt9O3afvUyi3L45+VNxE5kjFIPDELNSXyyxW0e638LV06GlT7vgd0o0B01VGeQSNNUlDC1Elg=="
  }
}
