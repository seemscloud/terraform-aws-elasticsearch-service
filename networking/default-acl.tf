resource "aws_default_network_acl" "default-acl" {
  default_network_acl_id = aws_vpc.network.default_network_acl_id

  ingress {
    rule_no = 100
    action = "allow"
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_block = "0.0.0.0/0"
  }
  
  egress {
    rule_no = 100
    action = "allow"
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_block = "0.0.0.0/0"
  }

  lifecycle {
    ignore_changes = [
      subnet_ids]
  }

  tags = {
    Name = var.default_acl_name
  }

  depends_on = [
    aws_vpc.network]
}