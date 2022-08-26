resource "azurerm_resource_group" "RGDR" {
  name     = "${var.DR}-ResourceGroup"
  location = var.DR_DC_Location
}

resource "azurerm_resource_group" "RGDC" {
  name     = "${var.DC}-ResourceGroup"
  location = var.DC_Location
}