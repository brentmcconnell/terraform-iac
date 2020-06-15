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

resource "azurerm_key_vault" "vault" {
  name                  = replace(local.vault_name, "-", "")
  sku_name              = "standard"
  location              = data.azurerm_resource_group.project-rg.location 
  resource_group_name   = data.azurerm_resource_group.project-rg.name
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

resource "azurerm_virtual_network" "main" {
  name                = "${local.prefix}-network"
  address_space       = ["10.0.0.0/16"]
  location            = data.azurerm_resource_group.project-rg.location
  resource_group_name = data.azurerm_resource_group.project-rg.name
}

resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name   = data.azurerm_resource_group.project-rg.name
  virtual_network_name = "${azurerm_virtual_network.main.name}"
  address_prefix       = "10.0.2.0/24"
}

resource "azurerm_linux_virtual_machine_scale_set" "main" {
  name                            = "${local.prefix}-vmss"
  resource_group_name             = data.azurerm_resource_group.project-rg.name
  location                        = data.azurerm_resource_group.project-rg.location
  sku                             = "Standard_F2"
  instances                       = 3
  admin_username                  = "adminuser"
  admin_password                  = "P@ssw0rd1234!"
  disable_password_authentication = false

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  network_interface {
    name    = "example"
    primary = true

    ip_configuration {
      name      = "internal"
      primary   = true
      subnet_id = azurerm_subnet.internal.id
    }
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }
}
