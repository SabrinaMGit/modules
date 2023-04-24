provider "aws" {
  #  shared_credentials_file = "~/.aws/credentials"
  #  shared_credentials_file = "%USERPROFILE%\.aws\credentials"
  /*
      Shared credential files is a text file with the following format:
        [<PROFILE>]
        aws_access_key_id = var.AWS_ACCESS_KEY_ID
        aws_secret_access_key = var.AWS_SECRET_ACCESS_KEY
  */
  profile = "default"
  region  = var.region
  version = "~> 2.61.0"
}