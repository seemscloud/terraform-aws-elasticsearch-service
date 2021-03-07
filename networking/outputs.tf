# VPC - Defaults
output "default_rtb_id" {
  value = aws_default_route_table.default-rtb.id
}

output "default_acl_id" {
  value = aws_default_network_acl.default-acl.id
}

output "default_sg_id" {
  value = aws_default_security_group.default-sg.id
}

# VPC - Subnets
output "vpc_subnet_bastion_id" {
  value = aws_subnet.bastion.id
}

output "vpc_subnet_es_svc_ids" {
  value = aws_subnet.elasticsearch.*.id
}

# VPC - Security Groups
output "sg_bastion_id" {
  value = aws_security_group.bastion.id
}

output "sg_elasticsearch_id" {
  value = aws_security_group.elasticsearch.id
}