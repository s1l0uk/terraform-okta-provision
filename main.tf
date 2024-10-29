provider "okta" {
  org_name = var.okta_org_name
  api_token = var.okta_api_token
}

resource "okta_group" "groups" {
  for_each = yamldecode(file(var.groups_yaml))

  name        = each.value.name
  description = each.value.description
}

resource "okta_app_oauth" "applications" {
  for_each = yamldecode(file(var.apps_yaml))

  label        = each.value.label
  sign_on_mode = each.value.sign_on_mode
  # additional options based on Okta API
}

output "group_ids" {
  value = okta_group.groups[*].id
}

output "app_ids" {
  value = okta_app_oauth.applications[*].id
}