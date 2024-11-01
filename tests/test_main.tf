terraform {
  required_providers {
    okta = {
      source  = "okta/okta"
      version = "~> 3.0"
    }
  }
}

resource "okta_group" "test_group" {
  name        = "Test Group"
  description = "This is a test group"
}

resource "okta_app_oauth" "test_app" {
  label        = "Test App"
  sign_on_mode = "OPENID_CONNECT"
}