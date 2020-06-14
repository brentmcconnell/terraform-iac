terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name    = "tfstateacct2280"
    container_name          = "proj-java"
    key                     = "terraform.tfstate"
    access_key              = "vQ6xqMQTRuSkdwre+x9sKPMD+9uNwRmzLkR1SvzuFaC6QX1Dbg12SKGOQbz8W38DSai+XHmmJxDJHTAhEwyEpg=="
  }
}
