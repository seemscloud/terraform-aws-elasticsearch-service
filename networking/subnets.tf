resource "aws_subnet" "bastion" {
  vpc_id = aws_vpc.network.id
  cidr_block = var.vpc_subnet_bastion_cidr_block

  tags = {
    Name = var.vpc_subnet_bastion_name
  }

  depends_on = [
    aws_vpc.network,
    aws_default_network_acl.default-acl]
}
