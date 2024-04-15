
provider "aws" {
  profile = var.profile
  region  = var.region
}

provider "aws" {
  alias      = "plain_text_access_keys_provider"
  region     = "us-west-1"
  access_key = "AKIAIOXXXXXX7EXAMPLE"
  secret_key = "wJalrXUtnFEMI/XXXXXXX/bPxRfiCYEXAMPLEKEY"
}

terraform {
  backend "s3" {
    encrypt = false
  }
}
