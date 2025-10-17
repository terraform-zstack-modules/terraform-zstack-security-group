## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_zstack"></a> [zstack](#requirement\_zstack) | >=1.1.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_zstack"></a> [zstack](#provider\_zstack) | >=1.1.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [zstack_networking_secgroup_rule.this](https://registry.terraform.io/providers/ZStack-Robot/zstack/latest/docs/resources/networking_secgroup_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action"></a> [action](#input\_action) | n/a | `any` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | n/a | `any` | n/a | yes |
| <a name="input_destination_port_ranges"></a> [destination\_port\_ranges](#input\_destination\_port\_ranges) | n/a | `any` | n/a | yes |
| <a name="input_direction"></a> [direction](#input\_direction) | n/a | `any` | n/a | yes |
| <a name="input_ip_ranges"></a> [ip\_ranges](#input\_ip\_ranges) | n/a | `any` | n/a | yes |
| <a name="input_ip_version"></a> [ip\_version](#input\_ip\_version) | n/a | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `any` | n/a | yes |
| <a name="input_priority"></a> [priority](#input\_priority) | n/a | `any` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | n/a | `any` | n/a | yes |
| <a name="input_security_group_uuid"></a> [security\_group\_uuid](#input\_security\_group\_uuid) | n/a | `any` | n/a | yes |
| <a name="input_state"></a> [state](#input\_state) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rule_uuid"></a> [rule\_uuid](#output\_rule\_uuid) | n/a |
