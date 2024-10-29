output "groups" {
  description = "List of created Okta groups."
  value       = okta_group.groups
}

output "applications" {
  description = "List of created Okta applications."
  value       = okta_app_oauth.applications
}