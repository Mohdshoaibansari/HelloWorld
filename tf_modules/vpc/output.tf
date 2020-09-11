############### VPC OUTPUTS ##############

output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_main_cidr_block" {
  value = aws_vpc.main.cidr_block
}

# output "vpc_additional_cidr_blocks" {
#   value = aws_vpc_ipv4_cidr_block_association.additional_cidrs.*.cidr_block
# }

# output "vpc_additional_cidr_block_ids" {
#   value = aws_vpc_ipv4_cidr_block_association.additional_cidrs.*.id
# }

############## DHCP OUTPUTS ##############

# output "dhcp_id" {
#   value = join("", aws_vpc_dhcp_options.dhcp.*.id)
# }


