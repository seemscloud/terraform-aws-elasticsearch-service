region = "eu-west-1"

# VPC
vpc_name = "network"
vpc_cidr_block = "172.31.0.0/16"

# VPC - Defaults
default_igw_name = "default-igw"
default_rtb_name = "default-rtb"
default_acl_name = "default-acl"
default_sg_name = "default-sg"

# VPC - Subnets
vpc_subnet_bastion_name = "bastion"
vpc_subnet_bastion_cidr_block = "172.31.1.0/24"

# Instance - Bastion
instance_bastion_name = "bastion"
instance_bastion_type = "r5ad.xlarge"
instance_bastion_rbd_type = "gp2"
instance_bastion_rbd_size = "10"
instance_bastion_abd_type = "gp2"
instance_bastion_abd_size = "20"
instance_bastion_ami = "ami-0823c236601fef765"