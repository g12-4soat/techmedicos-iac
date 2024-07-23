terraform {
  required_version = ">= 0.13"

  required_providers {
    aws = ">= 3.0"
    random = ">= 3.0"
  }

  backend "s3" {
    bucket = "tech-medicos-terraform"
    key    = "tech-medicos-terraform-gateway/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {  
  region = var.region
}