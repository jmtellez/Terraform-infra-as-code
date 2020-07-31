output "name" {
  value = azurerm_resource_group.rg.name
  description = "The unique name for the resource being created."
  sensitive = true
}