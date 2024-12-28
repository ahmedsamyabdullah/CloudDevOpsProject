variable "region" {
type = string
default = "us-east-1"
}
variable "cidr_block" {
   type     = string
   default  = "10.0.0.0/16"
}

variable "subnet_count" {
  type        = number
  default    = 2
}

variable "subnet_cidrs" {
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "availability_zones" {
  description = "The availability zones for the subnets"
  type        = list(string)
  default = [ "us-east-1a", "us-east-1b" ]
}
variable "vpc_id" {
  type = string
  default = "vpc-0277ca48ee00f74d4"
}
variable "instance_type" {
  description = "The EC2 instance type"
   type        = string
  default     = "t2.micro"
}
variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default = "ami-00317fa7ec113e2e4"
}

####################### S3 #######################
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default = "nti-ivolve25"
}
variable "email" {
  type = string
  default = "engahmedsamymohamed@yahoo.com"
}