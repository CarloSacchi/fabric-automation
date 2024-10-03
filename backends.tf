terraform {
  backend "azurerm" {
    resource_group_name  = "myrg"
    storage_account_name = "yourbackendstorage2024"
    container_name       = "cterraformstate"
    key                  = "terraform.tfstate"
  }
}