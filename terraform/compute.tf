# Plan-only example. The AMI ID is a placeholder.
resource "aws_instance" "application" {
  ami                         = "ami-0123456789abcdef0"
  subnet_id                   = aws_subnet.application.id
  vpc_security_group_ids      = [aws_security_group.application.id]
  instance_type               = "t3.micro"
  availability_zone           = "eu-west-1a"
  associate_public_ip_address = false

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
    encrypted   = true
  }

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  tags = {
    Name    = "atu-application"
    Project = "terraform-sentinel-assignment"
  }
}
