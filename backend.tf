terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name    = "tfstateacct6561"
    container_name          = "proj-java"
    key                     = "terraform.tfstate"
    access_key              = "LX/L+1VjPYvY2krf7I3CbXLJJ9Rt1DoXXjBKODOi95jCZHYPFcJIMScA7kwEOKviMVEDqhJ4T2cjhv2iE8NR0g=="
  }
}
