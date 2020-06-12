provider "azurerm" {
  version               = ">=2.0.0"
  client_id             = var.clientId
  client_secret         = var.clientSecret
  subscription_id       = var.subscriptionId
  tenant_id             = var.tenantId
  features {} 
}
