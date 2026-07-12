output "lb_nat_rules_backend_address_pool_id" {
  description = "Map of backend_address_pool_id values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.backend_address_pool_id }
}
output "lb_nat_rules_backend_ip_configuration_id" {
  description = "Map of backend_ip_configuration_id values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.backend_ip_configuration_id }
}
output "lb_nat_rules_backend_port" {
  description = "Map of backend_port values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.backend_port }
}
output "lb_nat_rules_enable_floating_ip" {
  description = "Map of enable_floating_ip values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.enable_floating_ip }
}
output "lb_nat_rules_enable_tcp_reset" {
  description = "Map of enable_tcp_reset values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.enable_tcp_reset }
}
output "lb_nat_rules_floating_ip_enabled" {
  description = "Map of floating_ip_enabled values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.floating_ip_enabled }
}
output "lb_nat_rules_frontend_ip_configuration_id" {
  description = "Map of frontend_ip_configuration_id values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.frontend_ip_configuration_id }
}
output "lb_nat_rules_frontend_ip_configuration_name" {
  description = "Map of frontend_ip_configuration_name values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.frontend_ip_configuration_name }
}
output "lb_nat_rules_frontend_port" {
  description = "Map of frontend_port values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.frontend_port }
}
output "lb_nat_rules_frontend_port_end" {
  description = "Map of frontend_port_end values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.frontend_port_end }
}
output "lb_nat_rules_frontend_port_start" {
  description = "Map of frontend_port_start values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.frontend_port_start }
}
output "lb_nat_rules_idle_timeout_in_minutes" {
  description = "Map of idle_timeout_in_minutes values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.idle_timeout_in_minutes }
}
output "lb_nat_rules_loadbalancer_id" {
  description = "Map of loadbalancer_id values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.loadbalancer_id }
}
output "lb_nat_rules_name" {
  description = "Map of name values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.name }
}
output "lb_nat_rules_protocol" {
  description = "Map of protocol values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.protocol }
}
output "lb_nat_rules_resource_group_name" {
  description = "Map of resource_group_name values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.resource_group_name }
}
output "lb_nat_rules_tcp_reset_enabled" {
  description = "Map of tcp_reset_enabled values across all lb_nat_rules, keyed the same as var.lb_nat_rules"
  value       = { for k, v in azurerm_lb_nat_rule.lb_nat_rules : k => v.tcp_reset_enabled }
}

