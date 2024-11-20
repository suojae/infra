resource "aws_eip" "this" {

  tags = {
    Name = var.eip_name
  }
}

resource "aws_nat_gateway" "this" {
  allocation_id = aws_eip.this.id
  subnet_id     = var.subnet_id

  tags = {
    Name = var.natgw_name
  }
}
