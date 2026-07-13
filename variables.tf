variable "lb_nat_rules" {
  description = <<EOT
Map of lb_nat_rules, attributes below
Required:
    - backend_port
    - frontend_ip_configuration_name
    - loadbalancer_id
    - name
    - protocol
    - resource_group_name
Optional:
    - backend_address_pool_id
    - enable_floating_ip
    - enable_tcp_reset
    - floating_ip_enabled
    - frontend_port
    - frontend_port_end
    - frontend_port_start
    - idle_timeout_in_minutes
    - tcp_reset_enabled
EOT

  type = map(object({
    backend_port                   = number
    frontend_ip_configuration_name = string
    loadbalancer_id                = string
    name                           = string
    protocol                       = string
    resource_group_name            = string
    backend_address_pool_id        = optional(string)
    enable_floating_ip             = optional(bool)
    enable_tcp_reset               = optional(bool)
    floating_ip_enabled            = optional(bool)
    frontend_port                  = optional(number)
    frontend_port_end              = optional(number)
    frontend_port_start            = optional(number)
    idle_timeout_in_minutes        = optional(number)
    tcp_reset_enabled              = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.lb_nat_rules : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_nat_rules : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_nat_rules : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_nat_rules : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_nat_rules : (
        length(v.frontend_ip_configuration_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_nat_rules : (
        v.idle_timeout_in_minutes == null || (v.idle_timeout_in_minutes >= 4 && v.idle_timeout_in_minutes <= 30)
      )
    ])
    error_message = "must be between 4 and 30"
  }
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

