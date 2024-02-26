resource "helm_repository" "grafana" {
  name = "grafana"
  url  = "https://grafana.github.io/helm-charts"
}

locals {
  password = var.adminPassword
}

resource "helm_release" "grafana" {
  depends_on = [
    helm_repository.grafana
  ]

  name       = "my-grafana"
  repository = helm_repository.grafana.metadata[0].name
  chart      = "grafana"
  version    = "6.16.14" # Adjust to the desired version

  set {
    name  = "adminPassword"
    value = local.password # Change this to a secure password
  }

  set {
    name  = "persistence.storageClassName"
    value = "manual"
  }

  # Configure Prometheus as a datasource for Grafana
  set {
    name  = "datasources.datasources\\.yaml.apiVersion"
    value = "1"
  }

  set {
    name  = "datasources.datasources\\.yaml.datasources[0].name"
    value = "Prometheus"
  }

  set {
    name  = "datasources.datasources\\.yaml.datasources[0].type"
    value = "prometheus"
  }

  set {
    name  = "datasources.datasources\\.yaml.datasources[0].url"
    value = "http://my-prometheus-server.default.svc.cluster.local" # Update this URL to match your Prometheus service
  }

  set {
    name  = "datasources.datasources\\.yaml.datasources[0].access"
    value = "proxy"
  }

  # Include additional configurations as required
}
