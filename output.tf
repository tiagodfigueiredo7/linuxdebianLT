output "ip_address"{
value = aws_instance.linuxTips.*.public_ip        

}

