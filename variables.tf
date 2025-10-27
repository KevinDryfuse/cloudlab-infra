variable "companies" {
  description = "List of company identifiers for environment setup."
  type        = list(string)
  default     = ["company1", "company2"]
}

variable "location" {
  description = "Default Azure region."
  type        = string
  default     = "eastus"
}