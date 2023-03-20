terraform {
  cloud {
    organization = "TerraformTask"

    workspaces {
      name = "Terraform_training"
    }
  }
}