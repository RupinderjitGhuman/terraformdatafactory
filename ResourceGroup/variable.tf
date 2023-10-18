# Define variables
variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}
variable "location" {
  description = "Location for the deployment"
  type        = string
}
variable "tags" {
  description = "Tags for the deployment"
}