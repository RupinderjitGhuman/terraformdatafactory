variable "bkstrgrg" {
  type        = string
  description = "The name of the backend storage account resource group"
}

variable "bkstrg" {
  type        = string
  description = "The name of the backend storage account"
  
}

variable "bkcontainer" {
  type = string
  description = "The container name for the backend config"
}

variable "bkstrgkey" {
  type = string
  description = "The access key for the storage account"
}
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
variable "Databrick_workspace_name" {
  description = "ID of an existing virtual network subnet"
  type        = string
}
variable "vnet_resourcegroup_name" {
  description = "resource Group name of Vnet"
  type        = string
}
variable "vnet_name" {
  description = "virtual network name"
  type        = string
}
variable "subnet_id" {
  description = "ID of an existing virtual network subnet"
  type        = string
}
variable "vnet_id" {
  description = "ID of an existing virtual network subnet"
  type        = string
}
variable "Databrick_sku" {
  description = "ID of an existing virtual network subnet"
  type        = string
}
variable "privatednszonename" {
  description = "ID of an existing virtual network subnet"
  type        = string
}
variable "privatednszoneresourcegroup" {
  description = "ID of an existing virtual network subnet"
  type        = string
}
variable "public_subnet_cidr" {
  description = "ID of an existing virtual network subnet"
  type        = string
}
variable "private_subnet_cidr" {
  description = "ID of an existing virtual network subnet"
  type        = string
}
