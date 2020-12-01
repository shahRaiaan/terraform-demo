module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "Ec2ModuleTemplate"
  instance_count         = 1

  ami                    = data.aws_ami.app_ami.id
  instance_type = var.instance_type
  subnet_id              = "subnet-bbc9bdf7"

  tags = {
    Terraform   = "true"
    Name = "eeeeee"
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
