data "aws_ami" "amazon_linux" {
    most_recent = true
    owners = ["amazon"]

    filter {
      name = "state"
      values = ["available"]
    }

}