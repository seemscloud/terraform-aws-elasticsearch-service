module "networking" {
  source = "./networking"

  # VPC
  vpc_name = local.vpc_name
  vpc_cidr_block = var.vpc_cidr_block

  # VPC - Defaults
  default_igw_name = local.default_igw_name
  default_rtb_name = local.default_rtb_name
  default_acl_name = local.default_acl_name
  default_sg_name = local.default_sg_name

  # VPC - Subnets
  vpc_subnet_bastion_name = local.vpc_subnet_bastion_name
  vpc_subnet_bastion_cidr_block = var.vpc_subnet_bastion_cidr_block

  # Instance - Bastion
  instance_bastion_sg_name = local.instance_bastion_name
}