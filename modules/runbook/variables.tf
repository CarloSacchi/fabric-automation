variable "rg_name" {
  description = "The name of the resource group in which to create the Automation Account."
  type        = string
}

variable "default_location" {
  description = "The location/region where the Automation Account will be created."
  type        = string
}

variable "runbook_name" {
  description = "The name of the Runbook."
  type        = string
}

variable "aut_account_name" {
  description = "The name of Automation Account."
  type        = string
}

variable "runbook_type" {
  description = "The type of the Runbook (e.g., PowerShell, Graph, etc.)."
  type        = string
  default     = "PowerShell"
}

variable "runbook_file_path" {
  description = "The file path to the Runbook script."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}

variable "environment" {
  type        = string
  description = "Short name of environment"
}