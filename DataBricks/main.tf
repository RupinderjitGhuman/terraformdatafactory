# Create a Databrick Workspace
resource "azurerm_databricks_workspace" "databricks_workspace" {
  #depends_on = [ azurerm_subnet_network_security_group_association.private, azurerm_subnet_network_security_group_association.public ]
  name                        = "${var.Databrick_workspace_name}-workspace"
  resource_group_name         = var.resource_group_name
  location                    = var.location
  sku                         = var.sku
  public_network_access_enabled = "false"
  network_security_group_rules_required = "NoAzureDatabricksRules"
      custom_parameters {
        virtual_network_id  = var.vnet_id
        no_public_ip = "true"
        public_subnet_name  = "${var.Databrick_workspace_name}-public-subnet"
        private_subnet_name = "${var.Databrick_workspace_name}-private-subnet"
        public_subnet_network_security_group_association_id  = var.nsgpublicid
        private_subnet_network_security_group_association_id = var.nsgpvtid
      }
  managed_resource_group_name = "${var.Databrick_workspace_name}-workspace-rg"
  tags = {
    OwnerBCHO = "Rupinderjit"
    CostCenter  = "0000-0000-0000"
    Enviornment = "DEV"
    SolutionName  = "Terraform Testing databricks Environment"
    SolutionType  = "M"
    Project = "Terraform Testing"
  }   
}