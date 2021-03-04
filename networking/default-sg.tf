resource "aws_default_security_group" "default-sg" {
  vpc_id = aws_vpc.network.id

  ingress {
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  egress {
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  tags = {
    Name = var.default_sg_name
  }

  depends_on = [
    aws_vpc.network]
}