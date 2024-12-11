resource "aws_security_group" "all_traffic" {
  name        = "allow-all-traffic"
  description = "Allow all inbound and outbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_instance" "bastion" {
  ami           = "ami-00eb69d236edcfaf8"  # Ubuntu Server 22.04 LTS (x86) AMI ID
  instance_type = "t2.micro"
  subnet_id     = var.public_subnet
  vpc_security_group_ids = [aws_security_group.all_traffic.id]  # Correct security group assignment
  key_name      = "aws"
}

resource "aws_instance" "private" {
  ami           = "ami-00eb69d236edcfaf8"  # Ubuntu Server 22.04 LTS (x86) AMI ID
  instance_type = "t2.micro"
  subnet_id     = var.private_subnet
  vpc_security_group_ids = [aws_security_group.all_traffic.id]  # Correct security group assignment
  key_name      = "aws"
}
