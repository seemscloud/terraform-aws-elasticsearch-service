resource "aws_network_interface" "bastion" {
  subnet_id = var.vpc_subnet_bastion_id

  security_groups = [
    var.ec2_bastion_sg_id
  ]

  tags = {
    Name = var.ec2_bastion_name
  }
}