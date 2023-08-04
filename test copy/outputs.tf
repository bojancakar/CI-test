output "instance_publicip" {
  description = "EC2 instance public ip"
  value       = aws_instance.myec2vm.public_ip
}

output "instance_publicdns" {
  description = "EC2 instance public dns"
  value       = aws_instance.myec2vm.public_dns
}