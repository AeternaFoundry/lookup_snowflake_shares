data "snowflake_shares" "shares_lookup" {
  for_each = var.shares_lookup

  pattern = each.value.pattern
}

