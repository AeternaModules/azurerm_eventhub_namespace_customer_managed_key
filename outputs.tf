output "eventhub_namespace_customer_managed_keys" {
  description = "All eventhub_namespace_customer_managed_key resources"
  value       = azurerm_eventhub_namespace_customer_managed_key.eventhub_namespace_customer_managed_keys
}
output "eventhub_namespace_customer_managed_keys_eventhub_namespace_id" {
  description = "List of eventhub_namespace_id values across all eventhub_namespace_customer_managed_keys"
  value       = [for k, v in azurerm_eventhub_namespace_customer_managed_key.eventhub_namespace_customer_managed_keys : v.eventhub_namespace_id]
}
output "eventhub_namespace_customer_managed_keys_infrastructure_encryption_enabled" {
  description = "List of infrastructure_encryption_enabled values across all eventhub_namespace_customer_managed_keys"
  value       = [for k, v in azurerm_eventhub_namespace_customer_managed_key.eventhub_namespace_customer_managed_keys : v.infrastructure_encryption_enabled]
}
output "eventhub_namespace_customer_managed_keys_key_vault_key_ids" {
  description = "List of key_vault_key_ids values across all eventhub_namespace_customer_managed_keys"
  value       = [for k, v in azurerm_eventhub_namespace_customer_managed_key.eventhub_namespace_customer_managed_keys : v.key_vault_key_ids]
}
output "eventhub_namespace_customer_managed_keys_user_assigned_identity_id" {
  description = "List of user_assigned_identity_id values across all eventhub_namespace_customer_managed_keys"
  value       = [for k, v in azurerm_eventhub_namespace_customer_managed_key.eventhub_namespace_customer_managed_keys : v.user_assigned_identity_id]
}

