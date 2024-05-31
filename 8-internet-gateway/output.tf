output "ec2_public_ip" {
  description = "Ip_publica_de_la_instance"
  value       = aws_instance.public_instance.public_ip
}