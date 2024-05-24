resource "aws_vpc" "vpc_ohio" {
  cidr_block = var.ohio[1]
  tags = {
    Name = var.ohio[0]
    name = var.ohio[0]
    env  = var.ohio[4]
  }
}
