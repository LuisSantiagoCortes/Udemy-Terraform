resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.map_cidrs["Virginia"]
  tags = {
    Name = "vpc_virginia"
    name = "prueba"
    env  = "Dev"
  }
}

resource "aws_vpc" "vpc_ohio" {
  cidr_block = var.map_cidrs["Ohio"]
  provider   = aws.ohio
  tags = {
    Name = "vpc_ohio"
    name = "prueba"
    env  = "Dev"
  }
}