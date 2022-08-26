variable "DR_DC_Location" {
  default = "Central India"
}

variable "DC_Location" {
  default = "East US"
}

variable "DR" {
  default = "Terraform_DR"
}
variable "DC" {
  default = "Terraform_DC"
}
# DR_ResourceGroup= "RG_DR_DC"
# DC_ResourceGroup= "RG_DC"
# DC_ResourceGroup= "RG_DC"


variable "DC_OS_CentOS" {
  type = map(any)
  default = {
    "offer"     = "CentOS"
    "publisher" = "OpenLogic"
    "sku"       = "7.5"
  }
}

variable "DC_OS_RHEL" {
  type = map(any)
  default = {
    "offer"     = "RHEL"
    "publisher" = "RedHat"
  "sku" = "7-LVM" }

}

variable "DR_DC_OS_Windows" {
  type = map(any)
  default = {
    "offer"     = "WindowsServer"
    "publisher" = "MicrosoftWindowsServer"
    "version"   = "latest"
  }

}

variable "DC_OS_Windows_sku" {
  type    = list(any)
  default = ["2022-Datacenter", "2022-datacenter-azure-edition-core", "2019-Datacenter", "2016-Datacenter", "2012-R2-Datacenter", "2012-Datacenter", "2008-R2-SP1"]
}