resource "aws_eip" "bastion" {
  vpc = true

  tags = {
    Name = var.instance_bastion_name
  }
}