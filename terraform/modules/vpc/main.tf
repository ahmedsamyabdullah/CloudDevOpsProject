# Create VPC
resource "aws_vpc" "vpc"{
    cidr_block              = var.cidr_block
    instance_tenancy        =  "default"
    enable_dns_support   = var.enable_dns_support
    enable_dns_hostnames    =  true
}

# Create internal gateway and attach it to vpc
resource "aws_internet_gateway" "internet_gateway" {
    vpc_id = aws_vpc.vpc.id  
}

# Create public subnet
resource "aws_subnet" "public_subnet" {
    vpc_id                      = aws_vpc.vpc.id
    cidr_block                  = var.subnet_cidrs[count.index]
    availability_zone           = var.availability_zones[count.index]
    map_public_ip_on_launch     = true
    count = var.subnet_count
  
}