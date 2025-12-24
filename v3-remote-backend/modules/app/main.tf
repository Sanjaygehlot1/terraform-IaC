data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
  provider    = aws

  filter {
    name   = "state"
    values = ["available"]
  }
}

resource "aws_instance" "demo_instance" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}
