terraform {
    backend "local" {
        path = "terraform.tfstate"
    }
}

resource "null_resource" "example" {
    triggers = {
        value = "A example resource that does nothing!"
    }
}