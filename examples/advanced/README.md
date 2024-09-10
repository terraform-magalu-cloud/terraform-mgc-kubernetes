## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_mgc"></a> [mgc](#requirement\_mgc) | 0.24.5 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.6.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kubernetes_example"></a> [kubernetes\_example](#module\_kubernetes\_example) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [random_string.sufix](https://registry.terraform.io/providers/hashicorp/random/3.6.2/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | name | `string` | `"advanced-example-k8s"` | no |

## Outputs

No outputs.