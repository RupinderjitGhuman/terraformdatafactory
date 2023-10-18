# Create a Two Subnet
# Create a Subnet within the Virtual Network
resource "azurerm_subnet" "public_subnet" {
  name                 = "${var.Databrick_workspace_name}-public-subnet"
  resource_group_name  = var.vnet_resourcegroup_name
  virtual_network_name = var.vnet_name
  address_prefixes     = [var.public_subnet_cidr]
    delegation {
        name = "databricks_public"
        service_delegation {
            name = "Microsoft.Databricks/workspaces"
        }
    }  
}
# Create a Subnet within the Virtual Network
resource "azurerm_subnet" "private_subnet" {
  name                 = "${var.Databrick_workspace_name}-private-subnet"
  resource_group_name  = var.vnet_resourcegroup_name
  virtual_network_name = var.vnet_name
  address_prefixes     = [var.private_subnet_cidr]
    delegation {
        name = "databricks_private"
        service_delegation {
            name = "Microsoft.Databricks/workspaces"
        }
    }  
}