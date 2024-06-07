## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0, < 2.0.0 |
| <a name="requirement_cilium"></a> [cilium](#requirement\_cilium) | ~> 0.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.53.0 |
| <a name="provider_cilium"></a> [cilium](#provider\_cilium) | 0.2.5 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.11.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_talos"></a> [talos](#module\_talos) | git::https://github.com/littlejo/terraform-aws-talos | lifecycle |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | n/a |

## Resources

| Name | Type |
|------|------|
| [cilium_cilium.this](https://registry.terraform.io/providers/littlejo/cilium/latest/docs/resources/cilium) | resource |
| [time_sleep.this](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |
| [aws_region.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azs_letter"></a> [azs\_letter](#input\_azs\_letter) | n/a | `list(string)` | <pre>[<br>  "a",<br>  "b",<br>  "c"<br>]</pre> | no |
| <a name="input_cilium_install"></a> [cilium\_install](#input\_cilium\_install) | Install Cilium CNI ? | `bool` | `true` | no |
| <a name="input_cilium_version"></a> [cilium\_version](#input\_cilium\_version) | n/a | `string` | `"1.15.5"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | n/a | `string` | `"talos-cilium"` | no |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | n/a | `string` | `"1.29.3"` | no |
| <a name="input_pod_cidr"></a> [pod\_cidr](#input\_pod\_cidr) | CIDR of Pods | `string` | `"100.64.0.0/14"` | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | n/a | `list(string)` | <pre>[<br>  "10.0.101.0/24",<br>  "10.0.102.0/24",<br>  "10.0.103.0/24"<br>]</pre> | no |
| <a name="input_service_cidr"></a> [service\_cidr](#input\_service\_cidr) | CIDR of Pods | `string` | `"100.68.0.0/16"` | no |
| <a name="input_talos_version"></a> [talos\_version](#input\_talos\_version) | Supported Talos versions (and therefore K8s versions) can be found here: https://github.com/siderolabs/talos/releases | `string` | `"v1.7.4"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | n/a | `string` | `"10.0.0.0/16"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | n/a | `string` | `"vpc-talos"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_elb_dns_name"></a> [elb\_dns\_name](#output\_elb\_dns\_name) | Public ELB DNS name. |
| <a name="output_path_to_kubeconfig_file"></a> [path\_to\_kubeconfig\_file](#output\_path\_to\_kubeconfig\_file) | Path to the kubeconfig of the Talos Linux cluster |
| <a name="output_path_to_talosconfig_file"></a> [path\_to\_talosconfig\_file](#output\_path\_to\_talosconfig\_file) | Path to the talosconfig of the Talos Linux cluster |
