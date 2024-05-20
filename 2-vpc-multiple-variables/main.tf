resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "vpc_virginia"
    env  = "Dev"
  }
}

resource "aws_vpc" "vpc_ohio" {
  cidr_block = var.ohio_cidr
  provider   = aws.ohio
  tags = {
    Name = "vpc_ohio"
    env  = "Dev"
  }
}