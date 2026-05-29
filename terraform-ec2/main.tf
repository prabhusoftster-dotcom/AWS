resource "aws_instance" "vm" {

  ami           = "ami-091138d0f0d41ff90"
  instance_type = "t2.micro"

  subnet_id = var.subnet_id

  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "Terraform-VM"
  }
}
