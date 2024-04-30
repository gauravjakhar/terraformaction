terraform {
  required_version = ">= 0.12"
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "null" {
  # NULL .
}

# Basic resource with no actual provisioning
resource "null_resource" "example" {
  triggers = {
    always_run = timestamp()
  }
}

# Output to test the configuration
output "example_output" {
  value = "Hello, Terraform!"
}
