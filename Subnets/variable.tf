# Define variables
variable "vnet_name" {
  description = "virtual network name"
  type        = string
}
variable "vnet_resourcegroup_name" {
  description = "resource Group name of Vnet"
  type        = string
}
variable "Databrick_workspace_name" {
  description = "ID of an existing virtual network subnet"
  type        = string
}
variable "public_subnet_cidr" {
  description = "public_subnet_cidr network subnet"
  type        = string
}
variable "private_subnet_cidr" {
  description = "private_subnet_cidr network subnet"
  type        = string
}
