# create the resource group - "rg"
resource "azurerm_resource_group" "resource-group" {
  name                = var.name
  location            = var.location
  tags                = var.tags
}