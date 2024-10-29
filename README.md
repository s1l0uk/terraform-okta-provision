# Overview

This Terraform module creates an Okta organization based on input YAML files that describe groups and applications. The module aims to be lightweight while exposing a variety of options available through the Okta API.

## Structure

- **main.tf**: The primary Terraform configuration file.
- **variables.tf**: Variable definitions for the module.
- **outputs.tf**: Outputs from the module.
- **data.yaml**: Example YAML file for input data.
- **terraform-docs.yaml**: Configuration for terraform-docs to keep README.md updated.
- **tests/**: Directory containing test files.

## Usage

1. Prepare your YAML file (e.g., `data.yaml`) that outlines your groups and applications.
2. Update your Terraform variables if necessary in `variables.tf`.
3. Run `terraform init`, `terraform plan`, and `terraform apply` to create the resources in Okta.

## Inputs

Refer to `variables.tf` for a comprehensive list of inputs.

## Outputs

Refer to `outputs.tf` for available outputs from the module.