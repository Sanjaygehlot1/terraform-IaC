
variable "region_name" {
    type = string
    default = "ap-south-1"
    description = "region in which to create the ec2 instance"
}

variable "image_id" {
  type = string
  default = "ami-0f5ee92e2d63afc18"
  description = "the AMI ID to create the ec2 instance based on."
}

variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "ec2 instance type"
}

variable "instance_name" {
  type = string
  description = "ec2 instance name tag"
}

