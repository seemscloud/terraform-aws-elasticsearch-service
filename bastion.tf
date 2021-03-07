module "bastion" {
  source = "./bastion"

  region = var.region

  # VPC - Defaults
  default_rtb_id = module.networking.default_rtb_id
  default_sg_id = module.networking.default_sg_id

  # VPC - Subnet
  vpc_subnet_bastion_id = module.networking.vpc_subnet_bastion_id

  # VPC - Security Groups
  sg_bastion_id = module.networking.sg_bastion_id

  # Instance - Bastion
  ec2_bastion_name = local.ec2_bastion_name
  ec2_bastion_type = var.ec2_bastion_type
  ec2_bastion_rbd_type = var.ec2_bastion_rbd_type
  ec2_bastion_rbd_size = var.ec2_bastion_rbd_size
  ec2_bastion_abd_type = var.ec2_bastion_abd_type
  ec2_bastion_abd_size = var.ec2_bastion_abd_size
  ec2_bastion_ami = var.ec2_bastion_ami

  # Key Pairs
  key_pair_deployer_name = aws_key_pair.deployer.key_name

  dependencies = [
    "module.networking"]
}