# Public IP
output "instance_public_ip" {
    description = "ec2 instance public ip"
    value = aws_instance.my_ec2_instance.public_ip
}
# Public DNS
output "instance_public_dns" {
    description = "ec2 instance public dns"
    value = aws_instance.my_ec2_instance.public_dns
}

