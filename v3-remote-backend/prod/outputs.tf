output "prod_ec2_instance_public_ip" {
  value = module.prod_module.ec2_public_ip
}

output "prod_ec2_instance_id" {
  value = module.prod_module.ec2_instance_id
}