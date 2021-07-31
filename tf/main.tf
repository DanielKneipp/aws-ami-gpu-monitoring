terraform {
  required_version = "~> 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.44.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "gpu_vm" {
  source = "./modules/monitored-gpu"

  ami = "ami-02fcd4d05b45168ef"
}
