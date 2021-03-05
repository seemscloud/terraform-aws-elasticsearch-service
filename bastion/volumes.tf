resource "aws_ebs_volume" "bastion" {
  availability_zone = aws_instance.bastion.availability_zone

  type = var.ec2_bastion_abd_type
  size = var.ec2_bastion_abd_size

  tags = {
    Name = "${var.ec2_bastion_name}-additional"
  }
}