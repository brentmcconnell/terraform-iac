locals {
  # All variables used in this file should be 
  # added as locals here 
  prefix                = "${var.prefix}-076"
  location              = var.location
  vault_name            = replace("${local.prefix}-vault", "-", '')
  project_rg            = data.azurerm_resource_group.project-rg.id 
  # Common tags should go here
  tags           = {
    created_by = "Terraform"
  }
}

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "vault" {
  name                  = local.vault_name 
  location              = local.location
  resource_group_name   = local.project_rg 
  sku_name              = "standard"
  tenant_id             = data.azurerm_client_config.current.tenant_id
  tags                  = local.tags


  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "get","list","create","delete","encrypt","decrypt","unwrapKey","wrapKey"
    ]

    secret_permissions = [
      "get","list","set","delete"
    ]

  }

}
