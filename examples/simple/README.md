## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_mgc"></a> [mgc](#requirement\_mgc) | ~> 0.27.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.6.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kubernetes_example"></a> [kubernetes\_example](#module\_kubernetes\_example) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [random_string.sufix](https://registry.terraform.io/providers/hashicorp/random/3.6.3/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | name | `string` | `"simple-example-k8s"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | Kubernetes cluster name |
| <a name="output_node_pools"></a> [node\_pools](#output\_node\_pools) | An array representing a set of nodes within a Kubernetes cluster |
| <a name="output_region"></a> [region](#output\_region) | Identifier of the region where the Kubernetes cluster is located |