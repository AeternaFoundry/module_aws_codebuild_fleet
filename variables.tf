variable "codebuild_fleets" {
  description = <<EOT
Map of codebuild_fleets, attributes below
Required:
    - base_capacity
    - compute_type
    - environment_type
    - name
Optional:
    - fleet_service_role
    - image_id
    - overflow_behavior
    - region
    - tags
    - tags_all
    - compute_configuration (block):
        - disk (optional)
        - instance_type (optional)
        - machine_type (optional)
        - memory (optional)
        - vcpu (optional)
    - scaling_configuration (block):
        - max_capacity (optional)
        - scaling_type (optional)
        - target_tracking_scaling_configs (optional, block):
            - metric_type (optional)
            - target_value (optional)
    - vpc_config (block):
        - security_group_ids (required)
        - subnets (required)
        - vpc_id (required)
EOT

  type = map(object({
    base_capacity      = number
    compute_type       = string
    environment_type   = string
    name               = string
    fleet_service_role = optional(string)
    image_id           = optional(string)
    overflow_behavior  = optional(string)
    region             = optional(string)
    tags               = optional(map(string))
    tags_all           = optional(map(string))
    compute_configuration = optional(object({
      disk          = optional(number)
      instance_type = optional(string)
      machine_type  = optional(string)
      memory        = optional(number)
      vcpu          = optional(number)
    }))
    scaling_configuration = optional(object({
      max_capacity = optional(number)
      scaling_type = optional(string)
      target_tracking_scaling_configs = optional(list(object({
        metric_type  = optional(string)
        target_value = optional(number)
      })))
    }))
    vpc_config = optional(list(object({
      security_group_ids = set(string)
      subnets            = set(string)
      vpc_id             = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.codebuild_fleets : (
        v.base_capacity >= 1
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.codebuild_fleets : (
        v.scaling_configuration == null || (v.scaling_configuration.target_tracking_scaling_configs == null || alltrue([for item in v.scaling_configuration.target_tracking_scaling_configs : (item.target_value == null || (item.target_value >= 0))]))
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

