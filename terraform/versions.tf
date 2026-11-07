terraform {
  required_version = "~> 1.17.0"

  cloud {
    organization = "michael-turvey-atu-devops"

    workspaces {
      name = "terraform-sentinel-assignment"
    }
  }
}
