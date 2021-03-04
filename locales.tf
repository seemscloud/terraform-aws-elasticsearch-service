locals {
  prefix = "a${random_string.random.result}"
}

locals {
  # VPC
  vpc_name = "${local.prefix}-${var.vpc_name}"

  # VPC - Defaults
  default_igw_name = "${local.prefix}-${var.default_igw_name}"
  default_rtb_name = "${local.prefix}-${var.default_rtb_name}"
  default_acl_name = "${local.prefix}-${var.default_acl_name}"
  default_sg_name = "${local.prefix}-${var.default_sg_name}"

  # Instance - Bastion
  instance_bastion_name = "${local.prefix}-${var.instance_bastion_name}"

  vpc_subnet_bastion_name = "${local.prefix}-${var.vpc_subnet_bastion_name}"
}