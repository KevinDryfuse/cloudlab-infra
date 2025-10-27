resource "azurerm_key_vault" "company" {
  name                        = "kv-${var.company}-${var.environment}"
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"
  enable_rbac_authorization   = true

  tags = var.tags
}

resource "azurerm_storage_account" "company" {
  name                     = "sa${var.company}${var.environment}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags
}

data "azurerm_client_config" "current" {}
