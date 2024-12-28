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

module "security-group" {
  source = "./modules/security-group"
 
  vpc_id = module.vpc.vpc_id 
}

module "ec2"{
  source = "./modules/ec2"
  instance_type = var.instance_type
  subnet_id = module.vpc.subnet_id
  security_group_ids = ["sg-01302c1c0ee4ead86"]
  key_name       = "ivlove"
  ami_id         = var.ami_id
}