#criando uma rede privada 
resource "aws_subnet" "subnet_private" {
  vpc_id            = aws_vpc.vpc_linux.id
  cidr_block        = "192.168.1.0/24"
  availability_zone = "us-east-2c"
  tags = {
    Name = "linuxtips"
  }
}

resource "aws_internet_gateway" "subnet_private_igw" {
  vpc_id = aws_vpc.vpc_linux.id

  tags = {
    Name = "linuxtips"
  }
}

resource "aws_route_table" "subnet_private_linuxtips" {
  vpc_id = aws_vpc.vpc_linux.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.subnet_private_igw.id
  }

  tags = {
    Name = "linuxtips"
  }
}

resource "aws_route_table_association" "subnet_private_rt_association" {
  subnet_id      = aws_subnet.subnet_private.id
  route_table_id = aws_route_table.subnet_private_linuxtips.id
}
