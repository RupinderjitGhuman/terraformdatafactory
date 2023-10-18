variable "Databrick_workspace_name" {
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
variable "public_subnet_id" {
  description = "Location for the deployment"
  type        = string
}
variable "private_subnet_id" {
  description = "Location for the deployment"
  type        = string
}