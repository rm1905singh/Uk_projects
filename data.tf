data "azurerm_key_vault" "akv_block" {
  name                = "New_kV_name"
  resource_group_name = "resource-group_name"
}

data "azurerm_key_vault_secret" "akvs_block1" {
  name         = "user_name"
  key_vault_id = data.azurerm_key_vault.akv_block.id
}

data "azurerm_key_vault_secret" "akvs_block2" {
  name         = "password"
  key_vault_id = data.azurerm_key_vault.akv_block.id
}