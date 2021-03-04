variable "region" {
  type = string
}

# VPC - Defaults
variable "default_rtb_id" {
  type = string
}

variable "default_sg_id" {
  type = string
}

# VPC - Subnets
variable "vpc_subnet_bastion_id" {
  type = string
}

# VPC - Security Groups
variable "instance_bastion_sg_id" {
  type = string
}

# Instance - Bastion
variable "instance_bastion_name" {
  type = string
}

variable "instance_bastion_type" {
  type = string
}

variable "instance_bastion_ami" {
  type = string
}

variable "instance_bastion_rbd_type" {
  type = string
}

variable "instance_bastion_rbd_size" {
  type = string
}

variable "instance_bastion_abd_type" {
  type = string
}

variable "instance_bastion_abd_size" {
  type = string
}

# Key Pairs
variable "key_pair_deployer_name" {
  type = string
}

# Dependencies
variable "dependencies" {
  type = list(string)
}

