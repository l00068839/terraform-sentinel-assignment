# Assignment only: dummy credentials for plans without AWS access.
# Do not use this configuration for real deployments.
provider "aws" {
  region     = "eu-west-1"
  access_key = "assignment-dummy-key"
  secret_key = "assignment-dummy-secret"

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
}
