variable "vpc_id" {
  type        = string
  description = "VPC ID for the security group"
}

variable "name" {
  type        = string
  description = "Name tag for the security group"
}

variable "description" {
  type        = string
  description = "Description of the security group"
  default     = "Allow access"
}

variable "allowed_ssh" {
  type        = list(string)
  description = "List of allowed CIDR blocks for SSH"
}
