locals {
  enable_ovndpdk = (
    var.vswitch_type == "OvnDpdk"
  )
}


# 如果是 OvnDpdk 类型，自动查询 controller
data "zstack_networking_sdn_controllers" "controller" {
  count = local.enable_ovndpdk && var.sdn_controller_name != null ? 1 : 0
  name  = var.sdn_controller_name
}

# Create Security Group
resource "zstack_networking_secgroup" "this" {
  name         = var.name
  description  = var.description
  vswitch_type = var.vswitch_type
  ip_version   = var.ip_version

    # Only set SDN Controller when vswitch_type == "OvnDpdk"
sdn_controller_uuid = local.enable_ovndpdk && var.sdn_controller_name != null ? try(data.zstack_networking_sdn_controllers.controller[0].sdn_controllers[0].uuid, null) : null
}

# Create Security Group Rules (dynamic) TODO 等cloud把优先级严格限制去掉
