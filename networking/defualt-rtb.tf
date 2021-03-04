resource "aws_default_route_table" "default-rtb" {
  default_route_table_id = aws_vpc.network.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default-igw.id
  }

  tags = {
    Name = var.default_rtb_name
  }

  depends_on = [
    aws_vpc.network,
    aws_internet_gateway.default-igw]
}