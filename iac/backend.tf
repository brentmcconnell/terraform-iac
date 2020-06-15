terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name    = "tfstateacct7117"
    container_name          = "proj-java"
    key                     = "terraform.tfstate"
    access_key              = "vdxesF3BDGBQtgz+cTU+gSEXSq/DlqSwPx1Ou2Blhj9buVXTX1XF4FaTgoG6Ibm0ZJSqhqxsimMj72ZLly63hQ=="
  }
}
