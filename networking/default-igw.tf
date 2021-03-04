resource "aws_internet_gateway" "default-igw" {
  vpc_id = aws_vpc.network.id

  tags = {
    Name = var.default_igw_name
  }

  depends_on = [
    aws_vpc.network]
}