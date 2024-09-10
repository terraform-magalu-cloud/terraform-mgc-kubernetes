## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_mgc"></a> [mgc](#requirement\_mgc) | 0.24.5 |
| <a name="requirement_time"></a> [time](#requirement\_time) | 0.11.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_mgc"></a> [mgc](#provider\_mgc) | 0.24.5 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.11.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [mgc_kubernetes_cluster.this](https://registry.terraform.io/providers/magalucloud/mgc/0.24.5/docs/resources/kubernetes_cluster) | resource |
| [mgc_kubernetes_nodepool.this](https://registry.terraform.io/providers/magalucloud/mgc/0.24.5/docs/resources/kubernetes_nodepool) | resource |
| [time_sleep.this](https://registry.terraform.io/providers/hashicorp/time/0.11.1/docs/resources/sleep) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_node_pools"></a> [additional\_node\_pools](#input\_additional\_node\_pools) | value | `map(any)` | `{}` | no |
| <a name="input_allowed_cidrs"></a> [allowed\_cidrs](#input\_allowed\_cidrs) | value | `list(string)` | `null` | no |
| <a name="input_async_creation"></a> [async\_creation](#input\_async\_creation) | Habilita ou Desabilita criação assincrona do kubernetes | `bool` | `false` | no |
| <a name="input_create"></a> [create](#input\_create) | Defines whether resource will be created or not | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | value | `string` | `""` | no |
| <a name="input_enabled_bastion"></a> [enabled\_bastion](#input\_enabled\_bastion) | value | `string` | `false` | no |
| <a name="input_enabled_server_group"></a> [enabled\_server\_group](#input\_enabled\_server\_group) | value | `bool` | `false` | no |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | value | `string` | `"v1.28.5"` | no |
| <a name="input_name"></a> [name](#input\_name) | Defines the name of resource | `string` | `"example-k8s"` | no |
| <a name="input_node_pools"></a> [node\_pools](#input\_node\_pools) | value | `any` | <pre>{<br>  "default": {<br>    "flavor": "cloud-k8s.gp1.medium",<br>    "max_replicas": 5,<br>    "min_replicas": 2<br>  }<br>}</pre> | no |
| <a name="input_zone"></a> [zone](#input\_zone) | value | `string` | `null` | no |

## Outputs

No outputs.