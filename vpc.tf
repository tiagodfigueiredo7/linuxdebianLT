resource "aws_vpc" "vpc_linux" {
  cidr_block = "192.168.0.0/16"
  tags = {
    Name = "Linux"
  }
}
