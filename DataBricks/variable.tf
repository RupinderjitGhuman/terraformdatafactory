# Define variables
variable "Databrick_workspace_name" {
  description = "ID of an existing virtual network subnet"
  type        = string
}
variable "vnet_id" {
  description = "ID of an existing virtual network subnet"
  type        = string
}
variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}
variable "location" {
  description = "Location for the deployment"
  type        = string
}
variable "sku" {
  description = "Location for the deployment"
  type        = string
}
variable "nsgpublicid" {
  description = "Location for the deployment"

}
variable "nsgpvtid" {
  description = "Location for the deployment"

}
