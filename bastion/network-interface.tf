resource "aws_network_interface" "bastion" {
  subnet_id = var.vpc_subnet_bastion_id

  security_groups = [
    var.sg_bastion_id
  ]

  tags = {
    Name = var.ec2_bastion_name
  }
}