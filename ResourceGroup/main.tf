# Create a Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location  # Replace with your desired location
  tags = {
    OwnerBCHO = "Rupinderjit"
    BCHOCostCenter  = "0000-0000-0000"
    Enviornment = "DEV"
    SolutionName  = "Terraform Testing Environment"
    SolutionType  = "M"
    Project = "Terraform Testing"
  }  
}