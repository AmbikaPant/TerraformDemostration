
resource "azurerm_network_interface" "citrix-1" {
  name                = "${var.DC}-citrix-1-nic"
  location            = azurerm_resource_group.RGDC.location
  resource_group_name = azurerm_resource_group.RGDC.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.Citrix.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "citrix-1" {
  name                             = "${var.DC}-citrix-1-vm"
  location                         = azurerm_resource_group.RGDC.location
  resource_group_name              = azurerm_resource_group.RGDC.name
  network_interface_ids            = [azurerm_network_interface.citrix-1.id]
  vm_size                          = "Standard_DS1_v2"
  delete_os_disk_on_termination    = true # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_data_disks_on_termination = true # Uncomment this line to delete the data disks automatically when deleting the VM

  # storage_image_reference {
  #   publisher = "Canonical"
  #   offer     = "UbuntuServer"
  #   sku       = "16.04-LTS"
  #   version   = "latest"
  # }

  storage_image_reference{

    publisher = "${var.DR_DC_OS_Windows.publisher}"
    offer = "${var.DR_DC_OS_Windows.offer}"
    version = "${var.DR_DC_OS_Windows.version}"
    sku = var.DC_OS_Windows_sku[0]
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
   os_profile_windows_config {
     #disable_password_authentication = false
   }
   tags = {
    environment = "Citrix Servers"
  }
}