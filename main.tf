terraform {
    backend "local" {
        path = "terraform.tfstate"
        workspaces {
            name = "example-workspace"
        }
    }
}

resource "null_resource" "example" {
    triggers = {
        value = "A example resource that does nothing!"
    }
}