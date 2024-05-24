resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.lista_cidrs[0]
  tags = {
    Name = "vpc_virginia"
    name = "prueba"
    env  = "Dev"
  }
}

resource "aws_vpc" "vpc_ohio" {
  cidr_block = var.lista_cidrs[1]
  provider   = aws.ohio
  tags = {
    Name = "vpc_ohio"
    name = "prueba"
    env  = "Dev"
  }
}