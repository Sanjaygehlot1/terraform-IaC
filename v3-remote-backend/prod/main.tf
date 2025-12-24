terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.0"
    } 
  }

  backend "s3" {
    bucket = "terraform-demo-s3-bucket-sanjay12"
    dynamodb_table = "terraform-demo-db"
    key = "prod/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}

provider "aws" {
  region = "ap-south-1"
}


module "prod_module" {
  source = "../modules/app"
  instance_name = "prod_ec2_instance"
  instance_type = "t2.micro"
  
}