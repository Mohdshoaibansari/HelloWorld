/* ====================================================
## Create a VPC with CIDR Blocks, Subnets, Route Tables and DHCP Config
## =================================================== */

############################ CORE VPC RESOURCES ##############################

# module "vpc_label" {
#   source        = "../../naming_custom"
#   common_naming = module.label.common_naming  ##It will trigger label module which will trigger naming module and common_naming value will be passed from nameing module
#   ext           = var.vpc_ext
#   role          = var.vpc_role
#   service       = var.vpc_service
# }

resource "aws_vpc" "main" {
  cidr_block           = element(var.vpc_cidr_blocks, 0)
  enable_dns_support   = var.vpc_enable_dns_support
  enable_dns_hostnames = var.vpc_enable_dns_hostnames
  #tags                 = merge(module.label.tags, module.vpc_label.tags)
}

# resource "aws_vpc_ipv4_cidr_block_association" "additional_cidrs" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = element(var.vpc_cidr_blocks, count.index + 1)
#   count      = length(var.vpc_cidr_blocks) - 1
# }

# Create if vgw_id is not empty.
# resource "aws_vpn_gateway_attachment" "vpn_attachment" {
#   vpc_id         = aws_vpc.main.id
#   vpn_gateway_id = var.vgw_id
#   count          = var.vgw_id == "" ? 0 : 1
# }

################################ DHCP CONFIG ################################

# module "dhcp_label" {
#   source        = "../../naming_custom"
#   common_naming = module.label.common_naming
#   ext           = var.dhcp_ext
#   role          = var.dhcp_role
#   service       = var.dhcp_service
# }

# resource "aws_vpc_dhcp_options" "dhcp" {
#   domain_name          = var.dhcp_domain_name
#   domain_name_servers  = split(",", var.dhcp_domain_name_servers)
#   ntp_servers          = split(",", var.dhcp_ntp_servers)
#   netbios_name_servers = split(",", var.dhcp_netbios_name_servers)
#   netbios_node_type    = var.dhcp_netbios_node_type
#   #tags                 = merge(module.label.tags, module.dhcp_label.tags)
#   count                = var.configure_dhcp ? 1 : 0
# }

# resource "aws_vpc_dhcp_options_association" "dns_resolver" {
#   vpc_id          = aws_vpc.main.id
#   dhcp_options_id = aws_vpc_dhcp_options.dhcp[0].id
#   count           = var.configure_dhcp ? 1 : 0
# }

