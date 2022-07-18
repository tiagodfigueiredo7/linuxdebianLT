


resource "aws_instance" "linuxtips" {
  ami                         = "ami-02d1e544b84bf7502"                        
  instance_type               = "t2.micro"                                          # tipo instancia Ec2. T2 micro
  key_name                    = var.key                                             # variable para a nossa chave de acesso via ssh
  vpc_security_group_ids      = [aws_security_group.ssh_access.id]                                                    # abrindo porta ssh no arq. security group
  associate_public_ip_address = "true"                                              # liberando ip publico
  subnet_id                   = aws_subnet.subnet_private.id


  tags = {
    Name = "linuxTips"
 }
}