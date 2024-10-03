output "runbook_id" {
  description = "The ID of the created Runbook."
  value       = azurerm_automation_runbook.runbook.id
}

output "name" {
  description = "The runbook_name of the created Runbook."
  value       = azurerm_automation_runbook.runbook.name

}