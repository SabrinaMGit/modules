terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "~> 15.8.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.2.3"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.64"
    }
  }
  required_version = ">= 0.15"
}

