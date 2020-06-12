provider "azurerm" {
  version               = ">=2.0.0"
  client_id             = var.client-id
  client_secret         = var.client-secret
  subscription_id       = var.subscription-id
  tenant_id             = var.tenant-id
  features {} 
}
