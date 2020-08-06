output "name" {
  value = azurerm_resource_group.resource-group.name
  description = "The unique name for the resource being created."
  sensitive = true
}