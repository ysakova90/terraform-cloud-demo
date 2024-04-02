data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "ysakova"
    workspaces = {
      name = "vpc"
    }
  }
}