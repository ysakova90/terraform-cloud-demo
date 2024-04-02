# Pulls VPC related informayion
data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "ysakova"
    workspaces = {
      name = "vpc"
    }
  }
}
# DB related information
data "terraform_remote_state" "rds" {
  backend = "remote"

  config = {
    organization = "ysakova"
    workspaces = {
      name = "rds"
    }
  }
}

# Pulls AMI informaation
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}