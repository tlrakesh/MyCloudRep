resource "aws_instance" "my_ec2_instance" {
  ami                     = data.aws_ami.amzlinux2.id
  instance_type           = var.instance_type
  vpc_security_group_ids = [ aws_security_group.vpc_ssh.id,aws_security_group.vpc_web.id]
  key_name = var.instance_keypair
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "name" = "EC2 Demo"
  }
}