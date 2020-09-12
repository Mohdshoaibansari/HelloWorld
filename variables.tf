variable "vpc" {
  type = map(string)
}

variable "vpc_cidr_blocks" {
    type=string
}

variable "region" {
  type = string
}

variable "vpc_cidr_blocks_add" {
  type        = string
  description = "The CIDR block for the VPC. Note the first one you define will be the main CIDR block of the VPC and cannot be changed!"
}

variable "project" {
  type = string
}
