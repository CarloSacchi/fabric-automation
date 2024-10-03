# Resource Group

resource "azurerm_resource_group" "resource_group" {

  name     = format("rg-%s-%s", var.environment, var.rg_name)
  location = var.default_location
  tags     = var.rg_tags

}