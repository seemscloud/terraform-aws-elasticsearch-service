resource "aws_elasticsearch_domain" "example" {
  domain_name = var.es_svc_domain_name

  ebs_options {
    ebs_enabled = true
    volume_type = var.es_svc_data_node_volume_type
    volume_size = var.es_svc_data_node_volume_size
  }

  cluster_config {
    dedicated_master_enabled = var.es_svc_dedicated_master_node_enabled
    dedicated_master_count = var.es_svc_dedicated_master_node_count
    dedicated_master_type = var.es_svc_dedicated_master_node_ec2_type

    instance_count = var.es_svc_data_node_count
    instance_type = var.es_svc_data_node_ec2_type

    zone_awareness_enabled = var.es_svc_zone_awareness_enabled

    zone_awareness_config {
      availability_zone_count = var.es_svc_availability_zone_count
    }

  }

  vpc_options {
    subnet_ids = var.vpc_subnet_es_svc_ids
  }
}