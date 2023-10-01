## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.26 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.9.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.11.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.traefik](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kubernetes_cluster_certificate_authority_data"></a> [kubernetes\_cluster\_certificate\_authority\_data](#input\_kubernetes\_cluster\_certificate\_authority\_data) | The base64-encoded Kubernetes cluster certificate authority data. | `string` | `""` | no |
| <a name="input_kubernetes_cluster_endpoint"></a> [kubernetes\_cluster\_endpoint](#input\_kubernetes\_cluster\_endpoint) | The endpoint URL of the Kubernetes cluster. | `string` | `""` | no |
| <a name="input_kubernetes_cluster_token"></a> [kubernetes\_cluster\_token](#input\_kubernetes\_cluster\_token) | The Kubernetes API token for authentication. | `string` | `""` | no |
| <a name="input_traefik_create_namespace"></a> [traefik\_create\_namespace](#input\_traefik\_create\_namespace) | Whether to create the Traefik namespace if it doesn't exist. | `bool` | `true` | no |
| <a name="input_traefik_enabled_entrypoints"></a> [traefik\_enabled\_entrypoints](#input\_traefik\_enabled\_entrypoints) | Configuration for Traefik entrypoints. | `string` | `"ports:\n  web:\n    port: 8000\n    expose: true\n    exposedPort: 80\n    protocol: TCP\n  intWeb:\n    port: 8001\n    expose: true\n    exposedPort: 81\n    protocol: TCP\n  traefik:\n    port: 9000\n    expose: false\n    exposedPort: 9000\n    protocol: TCP\n  metrics:\n    port: 9100\n    expose: false\n    exposedPort: 9100\n    protocol: TCP\n"` | no |
| <a name="input_traefik_ingress_isDefaultClass"></a> [traefik\_ingress\_isDefaultClass](#input\_traefik\_ingress\_isDefaultClass) | Whether Traefik should be the default ingress class. | `bool` | `true` | no |
| <a name="input_traefik_release_name"></a> [traefik\_release\_name](#input\_traefik\_release\_name) | The name of the Traefik Helm release. | `string` | `"traefik"` | no |
| <a name="input_traefik_release_namespace"></a> [traefik\_release\_namespace](#input\_traefik\_release\_namespace) | The namespace where Traefik should be deployed. | `string` | `"traefik"` | no |
| <a name="input_traefik_release_version"></a> [traefik\_release\_version](#input\_traefik\_release\_version) | The version of Traefik to deploy. | `string` | `"24.0.0"` | no |

## Outputs

No outputs.
