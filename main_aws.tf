terraform {
  required_version = "v1.2.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.22.0"
    }
  }
}

provider "aws" {
  default_tags {
    tags = {
      CreatedAt = formatdate("YYYY-MM-DD", timestamp())
    }
  }
}

resource "aws_vpc" "example" {
  cidr_block = "10.1.0.0/16"
}