resource_group_name = "ET-Terraform-Test-databricks"
Databrick_workspace_name = "ETTestDatabrick001"
public_subnet_cidr = "10.1.65.0/26"
private_subnet_cidr = "10.1.65.64/26"

#Belowm variable may be same for environement Please update accordingly
Databrick_sku = "premium"
subnet_id = "/subscriptions/7739b8d4-eb08-431f-b752-b3bc116a0d8b/resourceGroups/FHA-SO-Infra-Net-001/providers/Microsoft.Network/virtualNetworks/vnet-001/subnets/MISC"
vnet_id = "/subscriptions/7739b8d4-eb08-431f-b752-b3bc116a0d8b/resourceGroups/FHA-SO-Infra-Net-001/providers/Microsoft.Network/virtualNetworks/vnet-001"
vnet_resourcegroup_name = "FHA-SO-Infra-Net-001"
vnet_name = "vnet-001"
location = "canada central"
privatednszonename = "privatelink.azuredatabricks.net"
privatednszoneresourcegroup = "fha-so-infra-net-001"