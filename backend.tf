terraform {
  required_version = ">=0.12.6"
  backend "azurerm" {
    storage_account_name    = "tfstateacct9237"
    container_name          = "proj-java"
    key                     = "terraform.tfstate"
    access_key              = "WT3v7/TUrROmpzYxQvI1rXCfgMc/HjTvb6DjuXPMo97jA2AJ5NQAKuyWMuAIjNvZPjqOpyl1jf4QR50/5LpXyg=="
  }
}
