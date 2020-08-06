#################################### Variables ##################################################
variable "tenant-id" {
  description = "Tenant ID in Azure Active Directory."
}

variable "subscription-id" {
  description = "The Azure Subscription ID."
}
#################################### Resource Group Variables ###################################
variable "rg-name" {
  description = "The unique name for the resource being created."
}

variable "rg-location" {
  description ="Resource Group location."
}

variable "rg-tags" {
  description = " Tags for each resource for tracking."
}
#################################### App Service Plan Variables #################################
variable "asp-name" {
  description = "The unique name for the resource being created."
}

variable "asp-location" {
  description ="Resource Group location."
}

variable "asp-kind" {
  description = "The kind of the App Service Plan to create."
}

variable "asp-tags" {
  description = " Tags for each resource for tracking."
}
#################################### App Service Variables #################################
variable "as-name" {
  description = "The unique name for the resource being created."
}

variable "as-location" {
  description ="Resource Group location."
}

variable "as-tags" {
  description = " Tags for each resource for tracking."
}