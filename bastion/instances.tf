resource "aws_instance" "bastion" {
  ami = var.instance_bastion_ami
  instance_type = var.instance_bastion_type

  key_name = var.key_pair_deployer_name

  root_block_device {
    volume_type = var.instance_bastion_rbd_type
    volume_size = var.instance_bastion_rbd_size
  }

  network_interface {
    network_interface_id = aws_network_interface.bastion.id
    device_index = 0
  }

  tags = {
    Name = var.instance_bastion_name
  }

  depends_on = [
    var.dependencies
  ]
}