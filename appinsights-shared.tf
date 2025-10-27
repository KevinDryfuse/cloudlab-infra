resource "azurerm_application_insights" "platform_shared" {
  name                = "appi-cloudlab1-shared"
  location            = var.location
  resource_group_name = azurerm_resource_group.shared.name
  workspace_id        = azurerm_log_analytics_workspace.platform_shared.id
  application_type    = "web"

  tags = {
    environment = "shared"
    owner       = "platform"
  }
}
