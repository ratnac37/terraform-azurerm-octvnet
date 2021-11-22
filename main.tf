provider "azurerm" {
  features {}
  version         = "=2.46.0"
  subscription_id = "89a85c5b-a242-4f4d-a752-c1007e5b4875"
  client_id       = "a9df05c4-2e47-4afa-9233-e365777394f1"
  client_secret   = "sHg7Q~ImRBGNAJDU9zGnBTkWL-fMTeKoceNX-"
  tenant_id       = "84a7c293-7ddc-48cb-b826-74c2281936e3"
}
resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.loc
}

resource "azurerm_virtual_network" "example" {
  name                = var.vnetname
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.addspace
 
  subnet {
    name           = var.s1
    address_prefix = var.s1address
  }

  subnet {
    name           = var.s2
    address_prefix = var.s2address
  }

  subnet {
    name           = var.s3
    address_prefix = var.s3address
    }
}