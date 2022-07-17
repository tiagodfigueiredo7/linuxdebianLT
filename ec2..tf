


resource "aws_instance" "linuxtips" {
  ami                         = "ami-02f3416038bdb17fb"                        
  instance_type               = "t2.micro"                                          # tipo instancia Ec2. T2 micro
  key_name                    = var.key                                             # variable para a nossa chave de acesso via ssh
  vpc_security_group_ids      = data.aws_security_group.ssh.id                                                          # abrindo porta ssh no arq. security group
  associate_public_ip_address = "true"                                              # liberando ip publico
  subnet_id                   = data.aws_subnet.linuxtips.id       


  tags = {
    Name = "linuxTips"
 }
}