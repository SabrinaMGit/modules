######################################
######## Account Settings ############
######################################

provider "aws" {
  #  shared_credentials_file = "~/.aws/credentials"
  #  shared_credentials_file = "%USERPROFILE%\.aws\credentials"
  /*
      Shared credential files is a text file with the following format:
        [<PROFILE>]
        aws_access_key_id = <ACCESS_KEY_ID>
        aws_secret_access_key = <SECRET_ACCESS_KEY
  */
  profile = "default"
  region  = var.region
  version = "4.64.0"
}

data "aws_availability_zones" "azs" {
}

variable "devops_sg_cidr_vpc" {
  description = "The IPv4 CIDR block for the VPC"
  default = "10.0.0.0/16"
}
variable "key_name" {}
#variable "sydney_master_key_arn" {}
#variable "aws_linux_ami_sg" {}
#variable "ssl_cert_arn" {}
#variable "ubuntu_18_sg" {}
#variable "ubuntu_20_sg" {}

variable "project_name" {
  description = "Project Name - will prefex all generated AWS resource names"
  default     = "devops-portfolio"
}

variable "bucket_name" {
  default = "devlax-portfolio.com"
}

variable "region" {
  default = "eu-central-1"
}

variable "subnet_cdir" {
  default = "10.0.0.0/16"
}

variable "instance_type" {
  description = "aws instance for ec2"
  default = "t2.micro"
}

variable "AmazonEC2FullAccess_arn" {
  description = "arn policy in aws"
  default = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

variable "AmazonS3FullAccess_arn" {
  description = "arn policy in aws"
  default = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

variable "AWSCodedeploy_arn" {
  description = "arn policy in aws"
  default = "arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole"
}

variable "AmazonS3ReadOnlyAccess_arn" {
  description = "arn policy in aws"
  default = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

variable "r53zone" {
  description = "The ID of the hosted zone to contain this record."
  default = "eu-central-1"
}
variable "externaldnshost" {
  default = "www.devlax-portfolio.com"
}

variable "AWS_ACCESS_KEY_ID" {
  type        = string
  description = "value of the CI/CD variable"
}

variable "AWS_ACCOUNT_ID" {
  type        = string
  description = "value of the CI/CD variable"
}

variable "AWS_SECRET_ACCESS_KEY" {
  type        = string
  description = "value of the CI/CD variable"
}
