resource "azurerm_subnet" "Citrix" {
  name                 = "Citrix-Subnet"
  resource_group_name  = azurerm_resource_group.RGDC.name
  virtual_network_name = azurerm_virtual_network.DCVnetProd.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_subnet" "AD" {
  name                 = "AD-Subnet"
  resource_group_name  = azurerm_resource_group.RGDC.name
  virtual_network_name = azurerm_virtual_network.DCVnetProd.name
  address_prefixes     = ["10.0.3.0/24"]
}

resource "azurerm_subnet" "Exchange" {
  name                 = "AD-Subnet"
  resource_group_name  = azurerm_resource_group.RGDC.name
  virtual_network_name = azurerm_virtual_network.DCVnetProd.name
  address_prefixes     = ["10.0.4.0/24"]
}
