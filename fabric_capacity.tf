# Fabric Capacity

locals {

  fab_tags_01 = {
    "Workload" = "fabric_capacity_01"
  }

}

module "fabric_capacity_01" {

  source            = "./modules/fabric"
  fab_name          = "capacityname"
  resource_group_id = module.resource_group_01.id
  default_location  = var.default_location
  environment       = var.environment
  sku               = var.sku
  fab_admin_emails  = var.fab_admin_emails
  tags              = merge(var.tags, local.fab_tags_01)
  depends_on        = [module.resource_group_01]


}