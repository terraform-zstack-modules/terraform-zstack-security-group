output "secgroup_uuid" {
  description = "UUID of the created security group"
  value       = zstack_networking_secgroup.this.uuid
}


output "sdn_controller_uuid" {
  description = "UUID of the SDN controller (only for OvnDpdk)"
  value = (
    length(data.zstack_networking_sdn_controllers.controller) > 0 ?
    data.zstack_networking_sdn_controllers.controller[0].sdn_controllers[0].uuid :
    null
  )
}
