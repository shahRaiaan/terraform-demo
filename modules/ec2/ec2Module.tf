module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"
  name                   = "Ec2ModuleTemplate"
  instance_count         = 1

  ami                    = data.aws_ami.app_ami.id
  instance_type = var.instance_type
  subnet_id              = "subnet-bbc9bdf7"

  tags = local.common_tags
}

locals {
  common_tags = {
    Terraform = "true"
    Name = "eeee"
  }
}

data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]

}
}
