## Kubernetes connections variables

# The endpoint URL of the Kubernetes cluster.
variable "kubernetes_cluster_endpoint" {
  type    = string
  default = ""
  description = "The endpoint URL of the Kubernetes cluster."
}

# The base64-encoded Kubernetes cluster certificate authority data.
variable "kubernetes_cluster_certificate_authority_data" {
  type    = string
  default = ""
  description = "The base64-encoded Kubernetes cluster certificate authority data."
}

# The Kubernetes API token for authentication.
variable "kubernetes_cluster_token" {
  type    = string
  default = ""
  description = "The Kubernetes API token for authentication."
}

## Traefik variables

# The version of Traefik to deploy.
variable "traefik_release_version" {
  type    = string
  default = "24.0.0"
  description = "The version of Traefik to deploy."
}

# The name of the Traefik Helm release.
variable "traefik_release_name" {
  type    = string
  default = "traefik"
  description = "The name of the Traefik Helm release."
}

# The namespace where Traefik should be deployed.
variable "traefik_release_namespace" {
  type    = string
  default = "traefik"
  description = "The namespace where Traefik should be deployed."
}

# Whether to create the Traefik namespace if it doesn't exist.
variable "traefik_create_namespace" {
  type    = bool
  default = true
  description = "Whether to create the Traefik namespace if it doesn't exist."
}

# Configuration for Traefik entrypoints.
variable "traefik_enabled_entrypoints" {
  type    = string
  default = <<EOF
ports:
  web:
    port: 8000
    expose: true
    exposedPort: 80
    protocol: TCP
  intWeb:
    port: 8001
    expose: true
    exposedPort: 81
    protocol: TCP
  traefik:
    port: 9000
    expose: false
    exposedPort: 9000
    protocol: TCP
  metrics:
    port: 9100
    expose: false
    exposedPort: 9100
    protocol: TCP
EOF
  description = "Configuration for Traefik entrypoints."
}

# Whether Traefik should be the default ingress class.
variable "traefik_ingress_isDefaultClass" {
  type    = bool
  default = true
  description = "Whether Traefik should be the default ingress class."
}