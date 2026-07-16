output "eventhub_namespace_customer_managed_keys_id" {
  description = "Map of id values across all eventhub_namespace_customer_managed_keys, keyed the same as var.eventhub_namespace_customer_managed_keys"
  value       = { for k, v in azurerm_eventhub_namespace_customer_managed_key.eventhub_namespace_customer_managed_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eventhub_namespace_customer_managed_keys_eventhub_namespace_id" {
  description = "Map of eventhub_namespace_id values across all eventhub_namespace_customer_managed_keys, keyed the same as var.eventhub_namespace_customer_managed_keys"
  value       = { for k, v in azurerm_eventhub_namespace_customer_managed_key.eventhub_namespace_customer_managed_keys : k => v.eventhub_namespace_id if v.eventhub_namespace_id != null && length(v.eventhub_namespace_id) > 0 }
}
output "eventhub_namespace_customer_managed_keys_infrastructure_encryption_enabled" {
  description = "Map of infrastructure_encryption_enabled values across all eventhub_namespace_customer_managed_keys, keyed the same as var.eventhub_namespace_customer_managed_keys"
  value       = { for k, v in azurerm_eventhub_namespace_customer_managed_key.eventhub_namespace_customer_managed_keys : k => v.infrastructure_encryption_enabled if v.infrastructure_encryption_enabled != null }
}
output "eventhub_namespace_customer_managed_keys_key_vault_key_ids" {
  description = "Map of key_vault_key_ids values across all eventhub_namespace_customer_managed_keys, keyed the same as var.eventhub_namespace_customer_managed_keys"
  value       = { for k, v in azurerm_eventhub_namespace_customer_managed_key.eventhub_namespace_customer_managed_keys : k => v.key_vault_key_ids if v.key_vault_key_ids != null && length(v.key_vault_key_ids) > 0 }
}
output "eventhub_namespace_customer_managed_keys_user_assigned_identity_id" {
  description = "Map of user_assigned_identity_id values across all eventhub_namespace_customer_managed_keys, keyed the same as var.eventhub_namespace_customer_managed_keys"
  value       = { for k, v in azurerm_eventhub_namespace_customer_managed_key.eventhub_namespace_customer_managed_keys : k => v.user_assigned_identity_id if v.user_assigned_identity_id != null && length(v.user_assigned_identity_id) > 0 }
}

