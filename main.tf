
#Module for Resource Group Create

module "ResourceGroup" {
  source = "./ResourceGroup"
  resource_group_name = var.resource_group_name
  location = var.location
  tags = var.tags
}
#Module for Subnet Create
module "subnet" {
  source = "./Subnets"
  Databrick_workspace_name = var.Databrick_workspace_name
  vnet_resourcegroup_name  = var.vnet_resourcegroup_name
  vnet_name = var.vnet_name
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
 
}
#Module for NSG Create
module "nsg" {
  depends_on = [ module.subnet ]
  source = "./nsg"
  Databrick_workspace_name = var.Databrick_workspace_name
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  public_subnet_id = module.subnet.publicsubnet_out
  private_subnet_id = module.subnet.pvtsubnet_out
}
# Create a Databrick Workspace
module "databrickswks" {
  depends_on = [ module.nsg ]
  source = "./DataBricks"
  Databrick_workspace_name = var.Databrick_workspace_name
  vnet_id = var.vnet_id
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  sku = var.Databrick_sku
  nsgpublicid = module.nsg.nsgpublicid
  nsgpvtid = module.nsg.nsgpvtid
  tags = var.tags
}
# Create a Private EndPoints
module "privateendpoints" {
  source = "./PrivateEndPoints"
  subnet_id = var.subnet_id
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  Privatednszonename = var.privatednszonename
  Privatednszoneresourcegroup = var.privatednszoneresourcegroup
  Databrick_workspace_name = module.databrickswks.Databrick_workspace_name
  databricks_workspace_id = module.databrickswks.Databrick_workspace_id_out
}





