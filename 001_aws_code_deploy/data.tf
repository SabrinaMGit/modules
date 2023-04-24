data "aws_availability_zones" "azs" {
}

data "aws_ami" "ubuntu" {

  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

data "aws_route53_zone" "selected" {
  name = var.r53zone
}

data "aws_route53_zone" "selectedapp" {
  name = var.r53zone
}

#data "gitlab_project" "deployment" {
#  path_with_namespace = "devlax/deployment"
#}
