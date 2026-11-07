resource "aws_vpc" "assignment" {
  cidr_block = "10.20.0.0/16"

  tags = {
    Name = "atu-assignment-network"
  }
}

resource "aws_security_group" "application" {
  name        = "atu-application"
  description = "Restricted access for the assignment application"
  vpc_id      = aws_vpc.assignment.id
}

resource "aws_vpc_security_group_ingress_rule" "restricted_ssh" {
  security_group_id = aws_security_group.application.id
  description       = "SSH from the example internal management subnet"
  cidr_ipv4         = "10.20.10.0/24"
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}

resource "aws_subnet" "application" {
  vpc_id                  = aws_vpc.assignment.id
  cidr_block              = "10.20.1.0/24"
  availability_zone       = "eu-west-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "atu-application-subnet"
  }
}
