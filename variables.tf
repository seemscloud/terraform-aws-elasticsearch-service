variable "region" {
  type = string
}

# VPC
variable "vpc_name" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

# VPC - Defaults
variable "default_igw_name" {
  type = string
}

variable "default_rtb_name" {
  type = string
}

variable "default_acl_name" {
  type = string
}

variable "default_sg_name" {
  type = string
}

# VPC - Subnets
variable "vpc_subnet_bastion_name" {
  type = string
}

variable "vpc_subnet_bastion_cidr_block" {
  type = string
}

variable "vpc_subnet_es_svc_name" {
  type = string
}

variable "vpc_subnet_es_svc_cidr_block" {
  type = list(string)
}

# Instance - Bastion
variable "ec2_bastion_name" {
  type = string
}

variable "ec2_bastion_type" {
  type = string
}

variable "ec2_bastion_rbd_type" {
  type = string
}

variable "ec2_bastion_rbd_size" {
  type = string
}

variable "ec2_bastion_abd_type" {
  type = string
}

variable "ec2_bastion_abd_size" {
  type = string
}

variable "ec2_bastion_ami" {
  type = string
}

# Elasticsearch - Service
variable "es_svc_version" {
  type = string
}

variable "es_svc_domain_name" {
  type = string
}

variable "es_svc_data_node_count" {
  type = string
}

variable "es_svc_data_node_ec2_type" {
  type = string
}

variable "es_svc_data_node_volume_type" {
  type = string
}

variable "es_svc_data_node_volume_size" {
  type = string
}

variable "es_svc_dedicated_master_node_enabled" {
  type = bool
}

variable "es_svc_dedicated_master_node_ec2_type" {
  type = string
}

variable "es_svc_dedicated_master_node_count" {
  type = string
}

variable "es_svc_zone_awareness_enabled" {
  type = bool
}

variable "es_svc_availability_zone_count" {
  type = string
}