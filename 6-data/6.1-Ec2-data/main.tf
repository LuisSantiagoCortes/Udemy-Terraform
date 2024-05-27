resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "vpc_virginia"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc_virginia.id
  cidr_block              = var.subnets[0]
  map_public_ip_on_launch = true
  tags = {
    Name = "Public_Subnet_Temp"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.vpc_virginia.id
  cidr_block = var.subnets[1]
  depends_on = [ aws_subnet.public_subnet ] # Es necesario que se cree el recurso
  tags = {
    Name = "Private_Subnet_Temp"
  }
}

resource "aws_instance" "public_instance" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  key_name = data.aws_key_pair.key.key_name
}

