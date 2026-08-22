output "uxc_account_customizations_account_color" {
  description = "Map of account_color values across all uxc_account_customizations, keyed the same as var.uxc_account_customizations"
  value       = { for k, v in aws_uxc_account_customizations.uxc_account_customizations : k => v.account_color if v.account_color != null && length(v.account_color) > 0 }
}
output "uxc_account_customizations_visible_regions" {
  description = "Map of visible_regions values across all uxc_account_customizations, keyed the same as var.uxc_account_customizations"
  value       = { for k, v in aws_uxc_account_customizations.uxc_account_customizations : k => v.visible_regions if v.visible_regions != null && length(v.visible_regions) > 0 }
}
output "uxc_account_customizations_visible_services" {
  description = "Map of visible_services values across all uxc_account_customizations, keyed the same as var.uxc_account_customizations"
  value       = { for k, v in aws_uxc_account_customizations.uxc_account_customizations : k => v.visible_services if v.visible_services != null && length(v.visible_services) > 0 }
}

