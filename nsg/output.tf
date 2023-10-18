output "nsgpublicid" {
  value = azurerm_subnet_network_security_group_association.public.id
}
output "nsgpvtid" {
  value = azurerm_subnet_network_security_group_association.private.id
}