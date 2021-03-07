data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

resource "aws_elasticsearch_domain" "example" {
  domain_name = var.es_svc_domain_name
  elasticsearch_version = var.es_svc_version

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

    security_group_ids = [
      var.sg_elasticsearch_id
    ]
  }

  access_policies = <<CONFIG
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "es:*",
            "Principal": "*",
            "Effect": "Allow",
            "Resource": "arn:aws:es:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:domain/${var.es_svc_domain_name}/*"
        }
    ]
}
CONFIG

  depends_on = [
    var.dependencies
  ]
}