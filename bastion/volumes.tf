resource "aws_ebs_volume" "bastion" {
  availability_zone = aws_instance.bastion.availability_zone

  type = var.instance_bastion_abd_type
  size = var.instance_bastion_abd_size

  tags = {
    Name = "${var.instance_bastion_name}-additional"
  }
}