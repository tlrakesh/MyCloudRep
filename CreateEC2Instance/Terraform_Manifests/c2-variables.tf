variable "aws_region" {
    description = "AWS region where ec2 instnce to be created"
    type = string
    default = "us-east-2"
  
}
variable "instance_type" {
    description = "Instance type of the ec2 instance"
    type = string
    default = "t2.micro"
  
}
variable "instance_keypair" {
    description = "existing key pair that needs to be associated with EC2 instance"
    type = string
    default = "terraform-keypair2" 
}