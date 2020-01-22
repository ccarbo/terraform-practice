# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "~> 1.40"
}
#Declare variable local to call it will be local.prefix. 
locals {
  prefix = "p3"
}
#Create a resource group
resource "azurerm_resource_group" "p1" {
  name = var.resource_group
  location = "NorthEurope"
}
#Output console when apply, when we want to concatenate string + variable :: str '${name_variable}string'
output "resoruces_group_name" {
  value = azurerm_resource_group.p1.location
}

