variable "rg_name" {
  type    = string
  default = "fabric-rg"
}

variable "environment" {
  type        = string
  description = "Short name of environment: p, d, t, a, g"
}

variable "default_location" {
  type        = string
  description = "Specifies the supported Azure location"
}

variable "tags" {
  type        = map(string)
  description = "Tags that will be added to resource"
  default     = {}
}

variable "fab_name" {
  type    = string
  default = ""
}

variable "sku" {
  type        = string
  default     = "F2"
  description = "SKU name"
}

variable "fab_admin_emails" {
  type        = list(string)
  description = "Fabric administrator email"
}

variable "aut_account_name" {
  type        = string
  default     = "FabricCapacityStartAndStop"
  description = "Automation account name"
}