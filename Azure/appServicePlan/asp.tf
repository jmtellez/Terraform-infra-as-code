# create the app service plan - "asp"
resource "azurerm_app_service_plan" "asp" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource-group
  kind = var.kind
  reserved = true
  sku {
    tier = "Basic"  
    size = "B1"
  }
  tags = var.tags
}
