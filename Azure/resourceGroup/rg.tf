# create the resource group - "rg"
resource "azurerm_resource_group" "rg" {
  name                = var.name
  location            = var.location
  tags                = var.tags
}