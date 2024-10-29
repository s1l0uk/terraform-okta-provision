variable "okta_org_name" {
  description = "The name of the Okta organization."
  type        = string
}

variable "okta_api_token" {
  description = "API token for Okta."
  type        = string
}

variable "groups_yaml" {
  description = "Path to the YAML file describing groups."
  type        = string
}

variable "apps_yaml" {
  description = "Path to the YAML file describing applications."
  type        = string
}