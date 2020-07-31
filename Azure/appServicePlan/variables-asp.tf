#################################### Variables ##################################################
variable "name" {
  description = "The unique name for the resource being created."
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

variable "kind" {
  description = "The kind of the App Service Plan to create."
}
