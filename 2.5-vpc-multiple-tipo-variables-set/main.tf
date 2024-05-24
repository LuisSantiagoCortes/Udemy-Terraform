resource "aws_vpc" "vpc_virginia" {
  for_each   = var.set_cidrs
  cidr_block = each.value
  tags = {
    Name = "vpc_test"
    name = "prueba"
    env  = "Dev"
  }
}
