#import the Private DNS zone 
data "azurerm_private_dns_zone" "dnsuiapi" {
  name                = var.Privatednszonename
  resource_group_name = var.Privatednszoneresourcegroup
}
# Configure a Private Endpoint for the DataBrick Workspace databricks_ui_api
resource "azurerm_private_endpoint" "example_dnsuiapi" {
  name                = "${var.Databrick_workspace_name}-ui-api-PE"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id
  private_dns_zone_group {
    name                 = "azurerm_databricks_workspace.databricks_workspace.name"
    private_dns_zone_ids = [data.azurerm_private_dns_zone.dnsuiapi.id]
  }
  private_service_connection {
    name                           = "${var.Databrick_workspace_name}-ui-api-psc"
    is_manual_connection           = false
    private_connection_resource_id = var.databricks_workspace_id
    subresource_names              = ["databricks_ui_api"]
  }
}
# Configure a Private Endpoint for the DataBrick Workspace browser_authentication
# if canadacentral.pl-auth.privatelink.azuredatabricks.net is exist "is_manual_connection = true"
resource "azurerm_private_endpoint" "auth" {
  name                = "${var.Databrick_workspace_name}-auth-PE"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id
  
  private_dns_zone_group {
    name                 = "azurerm_databricks_workspace.databricks_workspace.name"
    private_dns_zone_ids = [data.azurerm_private_dns_zone.dnsuiapi.id]
  }
  private_service_connection {
    name                           = "${var.Databrick_workspace_name}-auth-psc"
    is_manual_connection           = false
    private_connection_resource_id = var.databricks_workspace_id
    subresource_names              = ["browser_authentication"]
  }
}