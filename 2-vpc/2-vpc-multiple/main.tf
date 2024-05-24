resource "aws_vpc" "vpc_virginia" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name = "vpc_virginia"
    env  = "Dev"
  }
}

resource "aws_vpc" "vpc_ohio" {
  cidr_block = "10.20.0.0/16"
  provider = aws.ohio
  tags = {
    Name = "vpc_ohio"
    env  = "Dev"
  }
}