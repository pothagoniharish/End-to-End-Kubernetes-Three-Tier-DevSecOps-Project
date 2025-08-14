terraform {
  backend "s3" {
    bucket         = "dev-project-harish1"
    region         = "us-east-1"
    key = "jenkins-server/terraform.tfstate"
    dynamodb_table = "my-dev-proj-01"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
