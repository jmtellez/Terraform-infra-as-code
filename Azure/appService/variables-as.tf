#################################### Variables ##################################################
variable "name" {
  description = "The unique name prefixes for the resources being created."
}

variable "asp-name"{
  description = "The unique name for the App Service Plan this App Service will belong to."
}

variable "location" {
  description ="Resource Group location."
}

variable "resource-group" {
  description ="Resource Group name."
}

variable "tags" {
  description = " Tags for each resource for tracking."
}