output "name" {
  value = azurerm_app_service_plan.app-service-plan.name
  description = "The unique name for the App Service Plan created."
  sensitive = true
}