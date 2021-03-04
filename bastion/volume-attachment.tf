resource "aws_volume_attachment" "bastion" {
  device_name = "/dev/xvdb"

  instance_id = aws_instance.bastion.id
  volume_id = aws_ebs_volume.bastion.id

  depends_on = [
    aws_instance.bastion,
    aws_ebs_volume.bastion
  ]
}