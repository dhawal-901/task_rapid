terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.62.0"
    }
  }

  backend "s3" {
    bucket  = "jenkins-task-2-node-app-94144 "
    encrypt = true
    key     = "terrbac"
    region  = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}
