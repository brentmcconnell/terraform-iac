locals {
  # All variables used in this file should be 
  # added as locals here 
  prefix                = "${var.prefix}-004"
  location              = var.location
  vault_name            = "${local.prefix}-vault"
  
  # Common tags should go here
  tags           = {
    created_by = "Terraform"
  }
}

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "vault" {
  name                  = local.vault_name 
  location              = local.location
  resource_group_name   = data.azurerm_resource_group.project-rg.id
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


# Uncomment to use the aztfmod module for 
# See gitub.com/aztfmod for more info

# locals {
#     resource_groups = {
#       data = {
#         name = "-data"
#         location = local.location
#       }
#       app = {
#        name = "-app"
#        location = local.location
#       }
#     }
# }

# module "rg_test" {
#   source = "aztfmod/caf-resource-group/azurerm"
#   resource_groups   = local.resource_groups
#   prefix            = local.prefix
#   tags              = local.tags
# }

# End aztfmod section
