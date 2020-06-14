terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name    = "tfstateacct1596"
    container_name          = "proj-java"
    key                     = "terraform.tfstate"
    access_key              = "PgZFdJCcsxBJ5TZ6T2pAl2SsU+ffFNYq3r0ghG3XQzBD/KJgOaEAdXnVFl8sQGIi1ZfTkhDz+7ig7GF60kHxZA=="
  }
}
