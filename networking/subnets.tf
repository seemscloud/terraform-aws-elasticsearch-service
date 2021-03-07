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

data "aws_availability_zones" "availability-zones" {
  state = "available"
}


resource "aws_subnet" "elasticsearch" {
  vpc_id = aws_vpc.network.id
  cidr_block = "${var.vpc_subnet_es_svc_cidr_block[count.index]}"

  availability_zone = "${data.aws_availability_zones.availability-zones.names[count.index]}"

  count = "${length(var.vpc_subnet_es_svc_cidr_block)}"

  tags = {
    Name = var.vpc_subnet_es_svc_name
  }

  depends_on = [
    aws_vpc.network,
    aws_default_network_acl.default-acl]
}
