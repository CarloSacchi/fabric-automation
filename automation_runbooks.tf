locals {

  a_run_tags_01 = {
    "Workload" = "automation_runbook_suspend"
  }

}

module "automation_runbook_resume_01" {

  source            = "./modules/runbook"
  rg_name           = var.rg_name
  default_location  = var.default_location
  environment       = var.environment
  aut_account_name  = module.automation_account_01.aut_account_name
  runbook_name      = "FabricResume"
  runbook_type      = "PowerShell72"
  runbook_file_path = "./files/FabricResume.ps1"
  tags              = merge(var.tags, local.a_run_tags_01)
  depends_on        = [module.automation_account_01]


}

module "automation_runbook_suspend_01" {

  source            = "./modules/runbook"
  rg_name           = var.rg_name
  default_location  = var.default_location
  environment       = var.environment
  aut_account_name  = module.automation_account_01.aut_account_name
  runbook_name      = "FabricSuspend"
  runbook_type      = "PowerShell72"
  runbook_file_path = "./files/FabricSuspend.ps1"
  tags              = merge(var.tags, local.a_run_tags_01)
  depends_on        = [module.automation_account_01]


}