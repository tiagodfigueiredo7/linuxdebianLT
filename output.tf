output "ip_address"{
value = aws_instance.linuxtips.*.public_ip            
}
