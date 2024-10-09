terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

provider "random" {
  # Configuration options
}

resource "random_pet" "some_value" {
  count  = var.strings
  length = var.length
}

output "random_value" {
  value       = random_pet.some_value.*.id
  description = "Generated strings"
}
