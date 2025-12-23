output "web_1_public_ip" {
  value = module.web1_module_1.ec2_public_ip
}

output "web_2_public_ip" {
  value = module.web1_module_2.ec2_public_ip
}