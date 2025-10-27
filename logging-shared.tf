resource "azurerm_log_analytics_workspace" "platform_shared" {
  name                = "log-cloudlab1-shared"
  location            = var.location
  resource_group_name = azurerm_resource_group.shared.name
  sku                 = "PerGB2018"
  retention_in_days   = 30

  tags = {
    environment = "shared"
    owner       = "platform"
  }
}