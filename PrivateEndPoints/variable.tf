# Define variables
variable "subnet_id" {
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
variable "Privatednszonename" {
  description = "Location for the deployment"
  type        = string
}
variable "Privatednszoneresourcegroup" {
  description = "Location for the deployment"
  type        = string
}
variable "Databrick_workspace_name" {
  description = "DataBricks Workspace name"
  type        = string
}
variable "databricks_workspace_id" {
  description = "ID of an existing databricks_workspace_id"
}
