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
  # --- Unconfirmed validation candidates, derived from azurerm_lb_nat_rule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: loadbalancer_id
  #   source:    [from loadbalancers.ValidateLoadBalancerID] !ok
  # path: loadbalancer_id
  #   source:    [from loadbalancers.ValidateLoadBalancerID] err != nil
  # path: protocol
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: frontend_port
  #   source:    validate.PortNumberOrZero: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: backend_port
  #   source:    validate.PortNumberOrZero: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: frontend_ip_configuration_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: backend_address_pool_id
  #   source:    [from loadbalancers.ValidateLoadBalancerBackendAddressPoolID] !ok
  # path: backend_address_pool_id
  #   source:    [from loadbalancers.ValidateLoadBalancerBackendAddressPoolID] err != nil
  # path: frontend_port_start
  #   source:    validate.PortNumber: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: frontend_port_end
  #   source:    validate.PortNumber: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: idle_timeout_in_minutes
  #   condition: value >= 4 && value <= 30
  #   message:   must be between 4 and 30
}

