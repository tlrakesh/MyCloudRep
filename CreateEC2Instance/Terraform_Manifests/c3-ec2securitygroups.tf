# Create security group for SSH

resource "aws_security_group" "vpc_ssh" {
    name = "vpc_ssh"
    description = "Dev VPC SSH"
    ingress  {
      description = "Allow Port 22"
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = [ "0.0.0.0/0" ]
    } 
    egress {
      description = "Allow all IP and ports outbound"
      from_port = 0
      protocol = "-1"
      cidr_blocks = [ "0.0.0.0/0" ]
      to_port = 0
    }
  
    tags = {
    name = "vpc_ssh"
  }
}

# Create security group for web access

resource "aws_security_group" "vpc_web" {
    name = "vpc_web"
    description = "Allow HTTP-80 and HTTPS-443"
    ingress {
      cidr_blocks = [ "0.0.0.0/0" ]
      description = "Allow port 80 and 443"
      from_port = 80
      protocol = "tcp"
      to_port = 80
    }
    ingress  {
      cidr_blocks = [ "0.0.0.0/0" ]
      description = "Allow port 80 and 443"
      from_port = 443
      protocol = "tcp"
      to_port = 443
    } 
    egress {
        description = "allow all ports outbound"
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
        name  = "vpc_web"
    }
}