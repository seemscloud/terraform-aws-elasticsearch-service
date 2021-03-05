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

  # VPC - Subnets
  vpc_subnet_bastion_name = "${local.prefix}-${var.vpc_subnet_bastion_name}"
  vpc_subnet_es_svc_name = "${local.prefix}-${var.vpc_subnet_es_svc_name}"

  # Instance - Bastion
  ec2_bastion_name = "${local.prefix}-${var.ec2_bastion_name}"

  # Elasticsearch - Service
  es_svc_domain_name = "${local.prefix}-${var.es_svc_domain_name}"
}