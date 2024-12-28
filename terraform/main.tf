provider "aws" {
  region = var.region
}

module "vpc" {
  source             = "./modules/vpc/"
  cidr_block         = var.cidr_block
  subnet_cidrs       = var.subnet_cidrs
  availability_zones = var.availability_zones
  subnet_count       = var.subnet_count
}

