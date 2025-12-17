resource "random_string" "myrandom" {

  length  = var.random_string_length
  special = var.random_string_special
  upper   = var.random_string_upper
  numeric = var.random_string_numeric

}

resource "azurerm_resource_group" "resource_group" {

  name     = var.resource_group_name
  location = var.resource_location
  tags     = var.tags

}


resource "azurerm_storage_account" "storage_account" {

  name = "${var.storage_account_name}${random_string.myrandom.id}"

  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location

  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  account_kind = var.storage_account_kind

  tags     = var.tags
  
}

resource "azurerm_storage_account_static_website" "azurerm_storage_account_static_website" {

  depends_on = [azurerm_storage_account.storage_account]

  storage_account_id = azurerm_storage_account.storage_account.id

  index_document = var.storage_account_static_website_index_document

  error_404_document = var.storage_account_static_website_error_404_document



}

