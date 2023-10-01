## Kubernetes connections variables
variable "kubernetes_cluster_endpoint" {
  type    = string
  default = ""
}

variable "kubernetes_cluster_certificate_authority_data" {
  type    = string
  default = ""
}

variable "kubernetes_cluster_token" {
  type    = string
  default = ""
}

## Traefik variables
variable "traefik_release_version" {
  type    = string
  default = "24.0.0"
}

variable "traefik_release_name" {
  type    = string
  default = "traefik"
}

variable "traefik_release_namespace" {
  type    = string
  default = "traefik"
}

variable "traefik_create_namespace" {
  type    = bool
  default = true
}

variable "traefik_enabled_entrypoints" {
  type    = string
  default = <<EOF
ports:
  web:
    port: 8000
    expose: true
    exposedPort: 80
    protocol: TCP
  intweb:
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
}

variable "traefik_ingress_isDefaultClass" {
  type    = bool
  default = true
}