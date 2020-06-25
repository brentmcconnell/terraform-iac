locals {
  # All variables used in this file should be 
  # added as locals here 
  prefix                = "${var.prefix}-2141"
  vault_name            = "${local.prefix}-vault"
  
  # Common tags should go here
  tags           = {
    created_by = "Terraform"
  }
}

data "azurerm_client_config" "current" {}

resource "azurerm_app_service_plan" "slotDemoPlan" {
  name                = "AppServicePlan-${local.prefix}"
  location            = local.location
  resource_group_name = data.azurerm_resource_group.project-rg.name
  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "slotDemoService" {
  name                = "AppService-${local.prefix}"
  location            = local.location
  resource_group_name = data.azurerm_resource_group.project-rg.name
  app_service_plan_id = "${azurerm_app_service_plan.slotDemoPlan.id}"
}
