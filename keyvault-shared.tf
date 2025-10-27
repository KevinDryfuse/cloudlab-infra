data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "platform_shared" {
  name                      = "kv-cloudlab1-shared"
  location                  = var.location
  resource_group_name       = azurerm_resource_group.shared.name
  tenant_id                 = data.azurerm_client_config.current.tenant_id
  sku_name                  = "standard"
  enable_rbac_authorization = true

  tags = {
    environment = "shared"
    owner       = "platform"
  }
}
