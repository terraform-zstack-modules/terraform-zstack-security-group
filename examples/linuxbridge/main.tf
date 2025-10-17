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


module "sg_linuxbridge" {
  source = "../../"

  name         = "tf-secgroup-linuxbridge"
  description  = "Test SG with LinuxBridge"
  vswitch_type = "LinuxBridge"
  ip_version   = 4
}

# 创建规则1（HTTP）
module "rule_http" {
  source                = "../../modules"
  name                  = "allow-http"
  security_group_uuid   = module.sg_linuxbridge.secgroup_uuid
  direction             = "Ingress"
  action                = "ACCEPT"
  protocol              = "TCP"
  priority              = 1
  ip_version            = 4
  ip_ranges             = "192.168.1.0/24"
  destination_port_ranges = "80"
  description           = "Allow HTTP"
  state                 = "Enabled"

  depends_on = [module.sg_linuxbridge]
}

module "rule_ssh" {
  source                = "../../modules"
  name                  = "allow-ssh"
  security_group_uuid   = module.sg_linuxbridge.secgroup_uuid
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

