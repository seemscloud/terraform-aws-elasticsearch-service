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
vpc_subnet_bastion_cidr_block = "172.31.11.0/24"

vpc_subnet_es_svc_name = "elasticsearch-service"
vpc_subnet_es_svc_cidr_block = [
  "172.31.21.0/24",
  "172.31.22.0/24",
  "172.31.23.0/24"
]

# Instance - Bastion
ec2_bastion_name = "bastion"
ec2_bastion_type = "c5d.xlarge"
ec2_bastion_rbd_type = "gp2"
ec2_bastion_rbd_size = "10"
ec2_bastion_abd_type = "gp2"
ec2_bastion_abd_size = "20"
ec2_bastion_ami = "ami-0823c236601fef765"

# Elasticsearch - Service
es_svc_domain_name = "elasticsearch"
es_svc_data_node_count = "3"
es_svc_data_node_ec2_type = "r4.large.elasticsearch"
es_svc_data_node_volume_type = ""
es_svc_data_node_volume_size = "100"
es_svc_dedicated_master_node_enabled = true
es_svc_dedicated_master_node_ec2_type = "r4.large.elasticsearch"
es_svc_dedicated_master_node_count = "3"
es_svc_zone_awareness_enabled = true
es_svc_availability_zone_count = "3"