variable "project_name" {
  description = "Project Name - will prefex all generated AWS resource names"
  default     = "devops-portfolio"
}

variable "region" {
  default = "eu-central-1"
}

variable "instance_type" {
  description = "aws instance for ec2"
  default = "t2.micro"
}

variable "devops_sg_cidr_vpc" {}
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
# variable "sydney_master_key_arn" {}
variable "aws_linux_ami_sg" {}
variable "ssl_cert_arn" {}
# variable "ubuntu_18_sg" {}
# variable "ubuntu_20_sg" {}
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
  default = "aws-ec2"
}

variable "AWS_ACCOUNT_ID" {
  type        = string
  description = "value of the CI/CD variable"
}

variable "AWS_SECRET_ACCESS_KEY" {
  type        = string
  description = "value of the CI/CD variable"
}
