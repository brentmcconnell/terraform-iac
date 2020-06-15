output "tags" {
  value = local.tags
}

output "prefix" {
  value = local.prefix
}

output "proj-rg-id" {
  value = data.azurerm_resource_group.project-rg.id
}

output "id" {
  value = azurerm_kubernetes_cluster.kubernetes.id
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.kubernetes.kube_config_raw
}

output "client_key" {
  value = azurerm_kubernetes_cluster.kubernetes.kube_config.0.client_key
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.kubernetes.kube_config.0.client_certificate
}

output "cluster_ca_certificate" {
  value = azurerm_kubernetes_cluster.kubernetes.kube_config.0.cluster_ca_certificate
}

output "host" {
  value = azurerm_kubernetes_cluster.kubernetes.kube_config.0.host
}
