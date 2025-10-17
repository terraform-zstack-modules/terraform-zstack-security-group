ZStack Cloud 安全组 Terraform Module

[English](./README.md) | 简体中文

## 版本要求

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_zstack"></a> [zstack](#requirement\_zstack) | >=1.1.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_zstack"></a> [zstack](#provider\_zstack) | >=1.1.1 |

## Modules

安全组子module

## 资源

| Name | Type |
|------|------|
| [zstack_networking_secgroup.this](https://registry.terraform.io/providers/ZStack-Robot/zstack/latest/docs/resources/networking_secgroup) | resource |
| [zstack_networking_sdn_controllers.controller](https://registry.terraform.io/providers/ZStack-Robot/zstack/latest/docs/data-sources/networking_sdn_controllers) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | 安全组描述 | `string` | `""` | no |
| <a name="input_ip_version"></a> [ip\_version](#input\_ip\_version) | 安全组IP版本 (4 or 6) | `number` | `4` | no |
| <a name="input_name"></a> [name](#input\_name) | 安全组名称 | `string` | n/a | yes |
| <a name="input_sdn_controller_name"></a> [sdn\_controller\_name](#input\_sdn\_controller\_name) | 安全组名 (OvnDpdk 类型时必须提供) | `string` | `null` | no |
| <a name="input_vswitch_type"></a> [vswitch\_type](#input\_vswitch\_type) | vswitch类型 (e.g., LinuxBridge or OvnDpdk) | `string` | `"LinuxBridge"` | no |

## 输出

| Name | Description |
|------|-------------|
| <a name="output_sdn_controller_uuid"></a> [sdn\_controller\_uuid](#output\_sdn\_controller\_uuid) | UUID of the SDN controller (only for OvnDpdk) |
| <a name="output_secgroup_uuid"></a> [secgroup\_uuid](#output\_secgroup\_uuid) | UUID of the created security group |
