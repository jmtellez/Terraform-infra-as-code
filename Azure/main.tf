# Settings to execute Terraform and limit azurerm provider version
provider "azurerm" {
  version         = "~> 2.4.0"
  features {}
  tenant_id       = var.tenant-id
  subscription_id = var.subscription-id
}

# Set the Terraform statefile in an existing storage account and container
terraform {
   backend "azurerm" {}
 }

# Module to create resource group
module "resource-group" {
  source                   = "./resourceGroup"
  name                     = var.rg-name
  location                 = var.rg-location
  tags                     = var.rg-tags
}

# Module to create app service plan
module "app-service-plan" {
  source                   = "./appServicePlan"
  name                     = var.asp-name
  location                 = var.asp-location
  resource-group           = module.resource-group.name
  kind                     = var.asp-kind
  tags                     = var.asp-tags
}

# Module to create app service
module "app-service" {
  source                   = "./appService"
  name                     = var.as-name
  location                 = var.as-location
  resource-group           = module.resource-group.name
  asp-name                 = module.app-service-plan.name
  tags                     = var.as-tags
}