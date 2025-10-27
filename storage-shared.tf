resource "azurerm_storage_account" "platform_shared" {
  name                     = "sacloudlab1platform"
  resource_group_name      = azurerm_resource_group.shared.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "shared"
    owner       = "platform"
  }
}
