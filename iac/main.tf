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

resource "azurerm_resource_group" "main" {
  name          = "${local.prefix}-resources"
  location      = data.azurerm_resource_group.project-rg.location 
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${local.prefix}-network"
  location            = data.azurerm_resource_group.project-rg.location 
  resource_group_name = data.azurerm_resource_group.project-rg.name
  address_space       = ["10.1.0.0/16"]
}

resource "azurerm_subnet" "internal" {
  name                 = "internal"
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = data.azurerm_resource_group.project-rg.name
  address_prefixes     = ["10.1.0.0/22"]
}

resource "azurerm_kubernetes_cluster" "kubernetes" {
  name                = "${local.prefix}-k8s"
  dns_prefix          = "${local.prefix}-k8s"
  location            = data.azurerm_resource_group.project-rg.location 
  resource_group_name = data.azurerm_resource_group.project-rg.name

  default_node_pool {
    name           = "system"
    node_count     = 1
    vm_size        = "Standard_DS2_v2"
    vnet_subnet_id = azurerm_subnet.internal.id
  }

  identity {
    type = "SystemAssigned"
  }

  addon_profile {
    aci_connector_linux {
      enabled = false
    }

    azure_policy {
      enabled = false
    }

    http_application_routing {
      enabled = false
    }

    kube_dashboard {
      enabled = true
    }

    oms_agent {
      enabled = false
    }
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "user" {
  name                  = "user"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.kubernetes.id
  vm_size               = "Standard_DS2_v2"
  node_count            = 1
  vnet_subnet_id        = azurerm_subnet.internal.id
}
