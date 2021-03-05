resource "aws_eip" "bastion" {
  vpc = true

  tags = {
    Name = var.ec2_bastion_name
  }
}