variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}
variable "instance_type" {
  description = "The EC2 instance type"
   type        = string
  default     = "t2.micro"
}
variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "subnet_id" {
  description = "The public subnet ID"
  type        = string
  default = "subnet-0fd25175adc1234bb"
}

variable "security_group_ids" {
  description = "List of Security Group IDs"
  type        = list(string)
}
