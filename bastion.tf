module "bastion" {
  source = "./bastion"

  region = var.region

  # VPC - Defaults
  default_rtb_id = module.networking.default_rtb_id
  default_sg_id = module.networking.default_sg_id

  # VPC - Subnet
  vpc_subnet_bastion_id = module.networking.vpc_subnet_bastion_id

  # VPC - Security Groups
  instance_bastion_sg_id = module.networking.instance_bastion_sg_id

  # Instance - Bastion
  instance_bastion_name = local.instance_bastion_name
  instance_bastion_type = var.instance_bastion_type
  instance_bastion_rbd_type = var.instance_bastion_rbd_type
  instance_bastion_rbd_size = var.instance_bastion_rbd_size
  instance_bastion_abd_type = var.instance_bastion_abd_type
  instance_bastion_abd_size = var.instance_bastion_abd_size
  instance_bastion_ami = var.instance_bastion_ami

  # Key Pairs
  key_pair_deployer_name = aws_key_pair.deployer.key_name

  dependencies = [
    "module.networking"]
}