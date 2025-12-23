terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws",
      version = "~>5.0"
    }
  }
}

module "web1_module_1" {
  source        = "./modules/module_1"
  instance_name = "web_1"
  instance_type = "t2.micro"
  vpc_cidr      = "10.0.0.0/16"
  subnet_cidr   = "10.0.1.0/24"
}

module "web1_module_2" {
  source        = "./modules/module_1"
  instance_name = "web_2"
  instance_type = "t2.micro"
  vpc_cidr      = "10.1.0.0/16"
  subnet_cidr   = "10.1.1.0/24"
}
