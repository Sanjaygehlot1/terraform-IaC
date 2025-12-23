output "ec2_public_id" {
  depends_on = [ aws_instance.demo-instance-2 ]
  value = aws_instance.demo-instance-2.id
  
}