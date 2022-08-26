resource "azurerm_virtual_network" "DCVnetProd" {
  name                = "${var.DR}-Prod_Vnet_network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.RGDC.location
  resource_group_name = azurerm_resource_group.RGDC.name
}

resource "azurerm_virtual_network" "DCVnetTest" {
  name                = "${var.DR}-Test_Vnet_network"
  address_space       = ["20.0.0.0/16"]
  location            = azurerm_resource_group.RGDC.location
  resource_group_name = azurerm_resource_group.RGDC.name
}

resource "azurerm_virtual_network" "DCVnetStg" {
  name                = "${var.DR}-Stg_Vnet_network"
  address_space       = ["30.0.0.0/16"]
  location            = azurerm_resource_group.RGDC.location
  resource_group_name = azurerm_resource_group.RGDC.name
}
