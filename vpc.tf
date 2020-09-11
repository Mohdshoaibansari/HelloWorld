module "main_vpc" {
  source                   = "./tf_modules/vpc"

  vpc_cidr_blocks          = var.vpc_cidr_blocks
  vpc_enable_dns_hostnames = var.vpc["enable_dns_hostnames"]
  vpc_enable_dns_support   = var.vpc["enable_dns_support"]
}
