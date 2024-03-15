terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "random" {
  # Configuration options
}

variable "my_key" {
  type    = string
  default = "my_default"
}

resource "random_pet" "some_value" {
  count  = 3
  length = 4
}

resource "random_pet" "another_value" {
  count = 10
  length = 4
}

output "random_value" {
  value = random_pet.some_value.*.id
}
