variable "company" {
  description = "Company identifier (e.g., company1, company2)."
  type        = string
}

variable "environment" {
  description = "Environment name (e.g., dev, test, prod)."
  type        = string
}

variable "resource_group_name" {
  description = "The resource group to place the resources in."
  type        = string
}

variable "location" {
  description = "Azure region for deployment."
  type        = string
}

variable "tags" {
  description = "Tags to apply to all resources."
  type        = map(string)
  default     = {}
}
