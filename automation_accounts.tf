locals {

  aac_tags_01 = {
    "Workload" = "automation_account_01"
  }

}

module "automation_account_01" {

  source                           = "./modules/automation-account"
  aut_account_name                 = "fabricautomation"
  environment                      = var.environment
  rg_name                          = var.rg_name
  default_location                 = var.default_location
  local_authentication_enabled     = true
  public_network_access_enabled    = true
  system_assigned_identity_enabled = true
  identity_type                    = "SystemAssigned"
  tags                             = merge(var.tags, local.aac_tags_01)
  depends_on                       = [module.resource_group_01]

}