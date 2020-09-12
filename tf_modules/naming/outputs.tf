output "oe" {
  value       = null_resource.default[0].triggers.oe
  description = "Normalized OE"
}

output "project" {
  value       = null_resource.default[0].triggers.project
  description = "Normalized project name"
}

output "environment" {
  value       = null_resource.default[0].triggers.environment
  description = "Normalized environment"
}

output "attributes" {
  value       = null_resource.default[0].triggers.attributes
  description = "Normalized attributes"
}

output "delimiter" {
  value       = var.delimiter
  description = "Delimiter used between `name`, `namespace`, `stage`, etc."
}

output "common_naming" {
  value = {
    "oe"          = null_resource.default[0].triggers.oe
    "project"     = null_resource.default[0].triggers.project
    "environment" = null_resource.default[0].triggers.environment
    "region"      = local.region_short
  }
}

output "region" {
  value = local.region_short
}

# Merge input tags with our tags.
# Note: `Name` has a special meaning in AWS and we need to disamgiuate it by using the computed `id`
output "tags" {
  value = merge(
    {
      "OE"          = null_resource.default[0].triggers.oe
      "Project"     = null_resource.default[0].triggers.project
      "Region"      = data.aws_region.current.name
      "Environment" = null_resource.default[0].triggers.environment
    },
    var.tags,
  )

  description = "Normalized Tag map"
}

# TODO: Add additional Tags to List
output "tag_list" {
  value = [
    {
      key                 = "OE"
      value               = null_resource.default[0].triggers.oe
      propagate_at_launch = true
    },
    {
      key                 = "Project"
      value               = null_resource.default[0].triggers.project
      propagate_at_launch = true
    },
    {
      key                 = "Region"
      value               = data.aws_region.current.name
      propagate_at_launch = true
    },
    {
      key                 = "Environment"
      value               = null_resource.default[0].triggers.environment
      propagate_at_launch = true
    },
  ]
}

