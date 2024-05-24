resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia.cidrs[0]
  tags = {
    Name = var.virginia.nombre
    name = var.virginia.nombre
    env  = var.virginia.env
  }
}
