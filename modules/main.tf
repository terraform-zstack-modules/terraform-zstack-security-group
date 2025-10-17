resource "zstack_networking_secgroup_rule" "this" {
  name                    = var.name
  security_group_uuid     = var.security_group_uuid
  direction               = var.direction
  action                  = var.action
  protocol                = var.protocol
  priority                = var.priority
  ip_version              = var.ip_version
  ip_ranges               = var.ip_ranges
  destination_port_ranges = var.destination_port_ranges
  description             = var.description
  state                   = var.state
}

