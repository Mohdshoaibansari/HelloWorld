vpc = {
  "service"              = "main"
  "role"                 = "vpc"
  "ext"                  = ""
  "enable_dns_hostnames" = "true"
  "enable_dns_support"   = "true"
}

vpc_cidr_blocks = "10.251.0.0/16"
region="ap-south-1"
