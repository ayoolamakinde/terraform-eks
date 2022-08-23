provider "aws" {
  region = var.region
}

data "aws_availability_zones" "available" {}

locals {
  cluster_name = "my-eks-test"
}

resource "random_string" "suffix" {
  length  = 8
  special = false
}
