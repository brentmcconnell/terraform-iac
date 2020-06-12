provider "azurerm" {
  version               = ">=2.0.0"
  client-id             = var.client-id
  client-secret         = var.client-secret
  subscription-id       = var.subscription-id
  tenant-id             = var.tenant-id
  features {} 
}
