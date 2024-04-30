package terraform.example.test

import data.terraform.example.test

# Test case for the "null_resource" with correct trigger
test_null_resource {
  input := {
    "type": "null_resource",
    "name": "example",
    "resource": {
      "triggers": {
        "always_run": "some_value"
      }
    }
  }

  test.allow with input as input
}

# Test case for the "output" with the correct name and value
test_output {
  input := {
    "type": "output",
    "name": "example_output",
    "resource": {
      "value": "Hello, Terraform!"
    }
  }

  test.output_check with input as input
}
