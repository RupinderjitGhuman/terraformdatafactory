# Create a Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location  # Replace with your desired location
  tags = var.tags
}