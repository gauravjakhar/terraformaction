package terraform.example.test

# Policy to ensure "null_resource" has "triggers" with "always_run"
default allow = false

allow {
  # Check for "null_resource" named "example" with specific trigger
  input.type == "null_resource"
  input.name == "example"
  input.resource.triggers.always_run != null
}

# Policy to ensure output is named "example_output" with specific value
output_check {
  input.type == "output"
  input.name == "example_output"
  input.resource.value == "Hello, Terraform!"
}
