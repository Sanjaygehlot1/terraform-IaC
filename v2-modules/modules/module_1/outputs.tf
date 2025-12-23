output "ec2_public_ip" {
  value = aws_instance.this.public_ip
}

output "vpc_id" {
  value = aws_vpc.this.id
}
