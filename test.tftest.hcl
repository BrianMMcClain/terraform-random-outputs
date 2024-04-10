
# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

variables {
  strings = 3
  length  = 4
}

run "default_values" {
  assert {
    condition     = var.strings == 3
    error_message = "default value for 'strings' variable should be 3"
  }

  assert {
    condition     = length(random_pet.some_value.*.id) == 3
    error_message = "length of generated strings should be 3"
  }

  assert {
    condition     = output.random_value == random_pet.some_value.*.id
    error_message = "output value should match the generated strings"
  }
}

run "custom_values" {
  variables {
    strings = 5
  }

  assert {
    condition     = var.strings == 5
    error_message = "value for 'strings' variable should be 5"
  }

  assert {
    condition     = length(random_pet.some_value.*.id) == 5
    error_message = "length of generated strings should be 5"
  }

  assert {
    condition     = output.random_value == random_pet.some_value.*.id
    error_message = "output value should match the generated strings"
  }
}
