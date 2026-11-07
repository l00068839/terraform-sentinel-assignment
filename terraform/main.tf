resource "aws_ebs_volume" "sensitive_data" {
  availability_zone = "eu-west-1a"
  size              = 1
  type              = "gp3"
  encrypted         = true

  tags = {
    Name               = "atu-sensitive-data"
    DataClassification = "Sensitive"
    Project            = "terraform-sentinel-assignment"
  }
}
