# reference the app service plan for web app
data "azurerm_app_service_plan" "app-service-plan" {
  name                = var.asp-name
  resource_group_name = var.resource-group
}

# create the app service
resource "azurerm_app_service" "app-service" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource-group
  app_service_plan_id = data.azurerm_app_service_plan.app-service-plan.id
  https_only          = true
  identity {
    type = "SystemAssigned"
  }
  client_affinity_enabled = false
#  General Settings - custom
  site_config {
    linux_fx_version = "JAVA|11-java11"
    java_version = "11"
    java_container = "JAVA"
    java_container_version = "JAVA"
    ftps_state = "FtpsOnly"
    websockets_enabled = false
    always_on = true
    http2_enabled = true
  }
  client_cert_enabled = true  
# Application Settings - custom
  app_settings = { }
  logs {
    http_logs {
      file_system {
        retention_in_days = 30
        retention_in_mb = 30
      }
    }
  }
  tags = var.tags
}