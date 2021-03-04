resource "aws_eip_association" "bastion" {
  instance_id = aws_instance.bastion.id
  allocation_id = aws_eip.bastion.id

  network_interface_id = aws_network_interface.bastion.id

  depends_on = [
    aws_eip.bastion,
    aws_network_interface.bastion
  ]
}