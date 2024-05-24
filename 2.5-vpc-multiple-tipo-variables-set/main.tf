resource "aws_vpc" "vpc_cidrs" {
  for_each = var.set_cidrs
  cidr_block = each.value
  tags = {
    Name = "vpc_virginia"
    name = "prueba"
    env  = "Dev"
  }
}
