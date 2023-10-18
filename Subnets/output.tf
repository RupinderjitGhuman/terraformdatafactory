output "pvtsubnet_out" {
  value =azurerm_subnet.private_subnet.id
}
output "publicsubnet_out" {
  value =azurerm_subnet.public_subnet.id
}