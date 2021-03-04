output "vpc_subnet_bastion_id" {
  value = aws_subnet.bastion.id
}

output "default_rtb_id" {
  value = aws_default_route_table.default-rtb.id
}

output "default_acl_id" {
  value = aws_default_network_acl.default-acl.id
}

output "default_sg_id" {
  value = aws_default_security_group.default-sg.id
}

output "instance_bastion_sg_id" {
  value = aws_security_group.instance-bastion-sg.id
}
