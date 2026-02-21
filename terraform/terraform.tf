variable "VULTR_API_KEY" {}

terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
      version = "~> 2.29.1"
    }
  }

  required_version = ">= 1.2"
}

provider "vultr" {
  api_key = var.VULTR_API_KEY
  rate_limit = 100
  retry_limit = 3
}
