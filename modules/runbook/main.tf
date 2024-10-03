resource "azurerm_automation_runbook" "runbook" {

  name                    = format("rb-%s-%s", var.environment, var.runbook_name)
  resource_group_name     = var.rg_name
  location                = var.default_location
  automation_account_name = var.aut_account_name
  log_verbose             = true
  log_progress            = true
  runbook_type            = var.runbook_type
  tags                    = var.tags

  content = file(var.runbook_file_path)

}