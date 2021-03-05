# VPC - Subnet IDs
variable "vpc_subnet_es_svc_ids" {
  type = list(string)
}

# Elasticsearch - Service
variable "es_svc_domain_name" {
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

variable "es_svc_data_node_count" {
  type = string
}

variable "es_svc_data_node_ec2_type" {
  type = string
}

variable "es_svc_zone_awareness_enabled" {
  type = bool
}

variable "es_svc_availability_zone_count" {
  type = string
}