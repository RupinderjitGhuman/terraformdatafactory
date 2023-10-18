#create NSG
resource "azurerm_network_security_group" "nsg" {
  name                = "${var.Databrick_workspace_name}-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name
}

#attached to subnets 
resource "azurerm_subnet_network_security_group_association" "public" {
  subnet_id                 = var.public_subnet_id
  network_security_group_id = azurerm_network_security_group.nsg.id
}
resource "azurerm_subnet_network_security_group_association" "private" {
  subnet_id                 = var.private_subnet_id
  network_security_group_id = azurerm_network_security_group.nsg.id
}