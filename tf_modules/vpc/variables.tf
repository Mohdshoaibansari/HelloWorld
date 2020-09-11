/* ====================================================
## Variable settings for VPC
## =================================================== */

################### CORE VPC VARS #######################

variable "vpc_cidr_blocks" {
  type        = string
  description = "The CIDR block for the VPC. Note the first one you define will be the main CIDR block of the VPC and cannot be changed!"
}

variable "vpc_enable_dns_hostnames" {
  default     = true
  description = "A boolean flag to enable/disable DNS support in the VPC. Defaults true."
}

variable "vpc_enable_dns_support" {
  default     = false
  description = "A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false."
}

# variable "vgw_id" {
#   type    = string
#   default = ""
# }

# variable "vpc_service" {
#   type = string
# }

# variable "vpc_role" {
#   type = string
# }

# variable "vpc_ext" {
#   type = string
# }

# ################### DHCP VARS ###########################

# variable "configure_dhcp" {
#   default     = "true"
#   description = "Define whether to use custom DHCP configuration or use default AWS DHCP options"
# }

# variable "dhcp_domain_name" {
#   default     = ""
#   description = "the suffix domain name to use by default when resolving non Fully Qualified Domain Names separated by commas - e.g. test.com,test2.com. In other words, this is what ends up being the search value in the /etc/resolv.conf file"
# }

# variable "dhcp_domain_name_servers" {
#   type        = string
#   default     = "AmazonProvidedDNS"
#   description = "List of name servers to configure in /etc/resolv.conf separated by commas - e.g. test.com,test2.com. If you want to use the default AWS nameservers you should set this to AmazonProvidedDNS"
# }

# variable "dhcp_ntp_servers" {
#   type        = string
#   default     = ""
#   description = "List of NTP servers to configure separated by commas - e.g. test.ntp,test2.ntp"
# }

# variable "dhcp_netbios_name_servers" {
#   type        = string
#   default     = ""
#   description = "List of NETBIOS name servers separated by commas - e.g. test.com,test2.com"
# }

# variable "dhcp_netbios_node_type" {
#   default     = "2"
#   description = "The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network"
# }

# variable "dhcp_service" {
#   type    = string
#   default = ""
# }

# variable "dhcp_role" {
#   type    = string
#   default = ""
# }

# variable "dhcp_ext" {
#   type    = string
#   default = ""
# }

# variable "is_public" {
#   default = false
# }

# variable "ig_service" {
#   type    = string
#   default = ""
# }

# variable "ig_role" {
#   type    = string
#   default = ""
# }

# variable "ig_ext" {
#   type    = string
#   default = ""
# }

