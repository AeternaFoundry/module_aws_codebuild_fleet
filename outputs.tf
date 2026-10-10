output "codebuild_fleets_id" {
  description = "Map of id values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "codebuild_fleets_arn" {
  description = "Map of arn values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "codebuild_fleets_base_capacity" {
  description = "Map of base_capacity values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.base_capacity if v.base_capacity != null }
}
output "codebuild_fleets_compute_configuration" {
  description = "Map of compute_configuration values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => one(v.compute_configuration) if v.compute_configuration != null && length(v.compute_configuration) > 0 }
}
output "codebuild_fleets_compute_type" {
  description = "Map of compute_type values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.compute_type if v.compute_type != null && length(v.compute_type) > 0 }
}
output "codebuild_fleets_created" {
  description = "Map of created values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.created if v.created != null && length(v.created) > 0 }
}
output "codebuild_fleets_environment_type" {
  description = "Map of environment_type values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.environment_type if v.environment_type != null && length(v.environment_type) > 0 }
}
output "codebuild_fleets_fleet_service_role" {
  description = "Map of fleet_service_role values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.fleet_service_role if v.fleet_service_role != null && length(v.fleet_service_role) > 0 }
}
output "codebuild_fleets_image_id" {
  description = "Map of image_id values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.image_id if v.image_id != null && length(v.image_id) > 0 }
}
output "codebuild_fleets_last_modified" {
  description = "Map of last_modified values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.last_modified if v.last_modified != null && length(v.last_modified) > 0 }
}
output "codebuild_fleets_name" {
  description = "Map of name values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "codebuild_fleets_overflow_behavior" {
  description = "Map of overflow_behavior values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.overflow_behavior if v.overflow_behavior != null && length(v.overflow_behavior) > 0 }
}
output "codebuild_fleets_region" {
  description = "Map of region values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "codebuild_fleets_scaling_configuration" {
  description = "Map of scaling_configuration values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => one(v.scaling_configuration) if v.scaling_configuration != null && length(v.scaling_configuration) > 0 }
}
output "codebuild_fleets_status" {
  description = "Map of status values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.status if v.status != null && length(v.status) > 0 }
}
output "codebuild_fleets_tags" {
  description = "Map of tags values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "codebuild_fleets_tags_all" {
  description = "Map of tags_all values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "codebuild_fleets_vpc_config" {
  description = "Map of vpc_config values across all codebuild_fleets, keyed the same as var.codebuild_fleets"
  value       = { for k, v in aws_codebuild_fleet.codebuild_fleets : k => v.vpc_config if v.vpc_config != null && length(v.vpc_config) > 0 }
}

