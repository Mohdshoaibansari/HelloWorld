## Module import to force naming convention
## please use this TF Script inside your module
## the output can be used in the form
## module.label.<output-name>
## e.g. module.label.id

module "label" {
  source      = "../naming"
  oe          = var.oe
  project     = var.project
  environment = var.environment
  attributes  = var.attributes
  tags        = var.tags
}

## Variable definition

variable "oe" {
  default     = "azt"
  description = "Allianz OE with the typical accronym, e.g. 'azt' for Allianz Technology"
}

variable "project" {
  default     = ""
  description = "Project name if projects has it's own environment"
}

variable "environment" {
  default     = "dev"
  description = "Environment to deploy resources, e.g. 'prod', 'test', 'dev', or 'shared'"
}

variable "enabled" {
  description = "Set to false to prevent the module from creating any resources"
  default     = "true"
}

variable "delimiter" {
  type        = string
  default     = "_"
  description = "Delimiter to be used between `name`, `namespace`, `stage`, etc."
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `policy` or `role`)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit`,`XYZ`)"
}

