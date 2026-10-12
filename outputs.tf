output "shares_lookup_id" {
  description = "Map of id values across all shares_lookup, keyed the same as var.shares_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_shares.shares_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "shares_lookup_pattern" {
  description = "Map of pattern values across all shares_lookup, keyed the same as var.shares_lookup except keys with no pattern are omitted"
  value       = { for k, v in data.snowflake_shares.shares_lookup : k => v.pattern if v.pattern != null && length(v.pattern) > 0 }
}
output "shares_lookup_shares" {
  description = "Map of shares values across all shares_lookup, keyed the same as var.shares_lookup except keys with no shares are omitted"
  value       = { for k, v in data.snowflake_shares.shares_lookup : k => v.shares if v.shares != null && length(v.shares) > 0 }
}

