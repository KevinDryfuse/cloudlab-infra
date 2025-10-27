module "company1_dev" {
  source              = "./modules/company_environment"
  company             = "company1"
  environment         = "dev"
  resource_group_name = azurerm_resource_group.companies["company1"].name
  location            = var.location
  tags = {
    environment = "dev"
    owner       = "company1"
  }
}

module "company2_dev" {
  source              = "./modules/company_environment"
  company             = "company2"
  environment         = "dev"
  resource_group_name = azurerm_resource_group.companies["company2"].name
  location            = var.location
  tags = {
    environment = "dev"
    owner       = "company2"
  }
}
