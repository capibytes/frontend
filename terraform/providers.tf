terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.22"
    }
  }

  required_version = ">= 1.5.7"
}

provider "aws" {
  region  = local.region

  default_tags {
    tags = {
      Env = local.env
      Team = local.team_name
      Project = local.app_name
      Subdomain = "frontend"
   }
 }
}