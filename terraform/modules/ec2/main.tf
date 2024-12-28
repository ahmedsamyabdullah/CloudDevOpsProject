resource "aws_instance" "app" {
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = var.instance_type
  key_name      = "ivolve"
  subnet_id     = var.subnet_id
  security_groups = var.security_group_ids
 
}
    