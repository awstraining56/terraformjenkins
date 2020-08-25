resource "aws_vpc" "javahome_vpc" {
  cidr_block      = var.vpc_cidr
  instance_tenancy = var.tenancy
  tags = {
    name = "${terraform.workspace}-javahome_vpc"
  }
}