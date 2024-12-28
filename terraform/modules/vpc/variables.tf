# vpc variables
variable "cidr_block" {
   type     = string
   default  = "10.0.0.0/16"
}

variable "enable_dns_support" {
  type        = bool
  default     = true
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