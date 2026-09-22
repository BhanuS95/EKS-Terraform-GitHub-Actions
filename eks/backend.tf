terraform {
  required_version = "~> 1.16.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.64.0"
    }
  }
  backend "s3" {
    bucket         = "my-eks-cluster-bhanu"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    use_lockfile   = true
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}
