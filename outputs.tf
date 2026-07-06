output "lb_nat_rules" {
  description = "All lb_nat_rule resources"
  value       = azurerm_lb_nat_rule.lb_nat_rules
}
output "lb_nat_rules_backend_address_pool_id" {
  description = "List of backend_address_pool_id values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.backend_address_pool_id]
}
output "lb_nat_rules_backend_ip_configuration_id" {
  description = "List of backend_ip_configuration_id values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.backend_ip_configuration_id]
}
output "lb_nat_rules_backend_port" {
  description = "List of backend_port values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.backend_port]
}
output "lb_nat_rules_enable_floating_ip" {
  description = "List of enable_floating_ip values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.enable_floating_ip]
}
output "lb_nat_rules_enable_tcp_reset" {
  description = "List of enable_tcp_reset values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.enable_tcp_reset]
}
output "lb_nat_rules_floating_ip_enabled" {
  description = "List of floating_ip_enabled values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.floating_ip_enabled]
}
output "lb_nat_rules_frontend_ip_configuration_id" {
  description = "List of frontend_ip_configuration_id values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.frontend_ip_configuration_id]
}
output "lb_nat_rules_frontend_ip_configuration_name" {
  description = "List of frontend_ip_configuration_name values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.frontend_ip_configuration_name]
}
output "lb_nat_rules_frontend_port" {
  description = "List of frontend_port values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.frontend_port]
}
output "lb_nat_rules_frontend_port_end" {
  description = "List of frontend_port_end values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.frontend_port_end]
}
output "lb_nat_rules_frontend_port_start" {
  description = "List of frontend_port_start values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.frontend_port_start]
}
output "lb_nat_rules_idle_timeout_in_minutes" {
  description = "List of idle_timeout_in_minutes values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.idle_timeout_in_minutes]
}
output "lb_nat_rules_loadbalancer_id" {
  description = "List of loadbalancer_id values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.loadbalancer_id]
}
output "lb_nat_rules_name" {
  description = "List of name values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.name]
}
output "lb_nat_rules_protocol" {
  description = "List of protocol values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.protocol]
}
output "lb_nat_rules_resource_group_name" {
  description = "List of resource_group_name values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.resource_group_name]
}
output "lb_nat_rules_tcp_reset_enabled" {
  description = "List of tcp_reset_enabled values across all lb_nat_rules"
  value       = [for k, v in azurerm_lb_nat_rule.lb_nat_rules : v.tcp_reset_enabled]
}

