resource "aws_security_group" "instance-bastion-sg" {
  vpc_id = aws_vpc.network.id

  ingress {
    protocol = "tcp"
    from_port = 22
    to_port = 22
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
    Name = var.ec2_bastion_sg_name
  }

  depends_on = [
    aws_vpc.network]
}