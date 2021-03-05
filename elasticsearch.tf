module "elasticsearch" {
  source = "./elasticsearch"

  # VPC - Subnet
  vpc_subnet_es_svc_ids = module.networking.vpc_subnet_es_svc_ids

  # Elasticsearch - Service
  es_svc_domain_name = local.es_svc_domain_name
  es_svc_data_node_volume_type = var.es_svc_data_node_volume_type
  es_svc_data_node_volume_size = var.es_svc_data_node_volume_size
  es_svc_dedicated_master_node_enabled = var.es_svc_dedicated_master_node_enabled
  es_svc_dedicated_master_node_count = var.es_svc_dedicated_master_node_count
  es_svc_dedicated_master_node_ec2_type = var.es_svc_dedicated_master_node_ec2_type
  es_svc_data_node_count = var.es_svc_data_node_count
  es_svc_data_node_ec2_type = var.es_svc_data_node_ec2_type
  es_svc_zone_awareness_enabled = var.es_svc_zone_awareness_enabled
  es_svc_availability_zone_count = var.es_svc_availability_zone_count
}