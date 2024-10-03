# Resource Group Module

locals {

  rg_tags_01 = {
    "Workload" = "resource_group_01"
  }

}

module "resource_group_01" {

  source           = "./modules/resource-group"
  rg_name          = var.rg_name
  environment      = var.environment
  default_location = var.default_location
  rg_tags          = merge(var.tags, local.rg_tags_01)

}