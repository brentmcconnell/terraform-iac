output "tags" {
  value = local.tags
}

output "prefix" {
  value = local.prefix
}

output "proj-rg-id" {
  value = data.azurerm_resource_group.project-rg.id
}
