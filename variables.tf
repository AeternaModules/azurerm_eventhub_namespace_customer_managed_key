variable "eventhub_namespace_customer_managed_keys" {
  description = <<EOT
Map of eventhub_namespace_customer_managed_keys, attributes below
Required:
    - eventhub_namespace_id
    - key_vault_key_ids
Optional:
    - infrastructure_encryption_enabled
    - user_assigned_identity_id
EOT

  type = map(object({
    eventhub_namespace_id             = string
    key_vault_key_ids                 = set(string)
    infrastructure_encryption_enabled = optional(bool) # Default: false
    user_assigned_identity_id         = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_eventhub_namespace_customer_managed_key's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: eventhub_namespace_id
  #   source:    [from namespaces.ValidateNamespaceID] !ok
  # path: eventhub_namespace_id
  #   source:    [from namespaces.ValidateNamespaceID] err != nil
  # path: key_vault_key_ids[*]
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: key_vault_key_ids[*]
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
}

