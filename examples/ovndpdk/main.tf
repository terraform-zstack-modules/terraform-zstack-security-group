terraform {
  required_providers {
    zstack = {
      source  = "ZStack-Robot/zstack"
      version = "1.1.1"
    }
  }
}

provider "zstack" {
  host             = "zstack cloud mn ip"  
  account_name     = "admin"        
  account_password = "password"     
}


module "sg_ovndpdk" {
  source = "../../"

  name         = "tf-secgroup-ovndpdk"
  description  = "Test SG with OvnDpdk"
  vswitch_type = "OvnDpdk"
  ip_version   = 4
  sdn_controller_name = "172.30.3.155"
}
# 创建规则1（HTTP）
module "rule_http" {
  source                = "../../modules"
  name                  = "allow-http"
  security_group_uuid   = module.sg_ovndpdk.secgroup_uuid
  direction             = "Ingress"
  action                = "ACCEPT"
  protocol              = "TCP"
  priority              = 1
  ip_version            = 4
  ip_ranges             = "192.168.1.0/24"
  destination_port_ranges = "80"
  description           = "Allow HTTP"
  state                 = "Enabled"

  depends_on = [module.sg_ovndpdk]
}

module "rule_ssh" {
  source                = "../../modules"
  name                  = "allow-ssh"
  security_group_uuid   = module.sg_ovndpdk.secgroup_uuid
  direction             = "Ingress"
  action                = "ACCEPT"
  protocol              = "TCP"
  priority              = 2
  ip_version            = 4
  ip_ranges             = "192.168.2.0/24"
  destination_port_ranges = "22"
  description           = "Allow SSH"
  state                 = "Enabled"

  depends_on = [module.rule_http]
}

