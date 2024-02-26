resource "helm_repository" "prometheus_community" {
  name = "prometheus-community"
  url  = "https://prometheus-community.github.io/helm-charts"
}

resource "helm_release" "prometheus" {
  depends_on = [
    helm_repository.prometheus_community
  ]

  name       = "my-prometheus"
  repository = helm_repository.prometheus_community.metadata[0].name
  chart      = "prometheus"
  version    = "14.5.0" # Ensure to use the version that suits your needs

  set {
    name  = "alertmanager.persistentVolume.storageClass"
    value = "manual"
  }

  set {
    name  = "server.persistentVolume.storageClass"
    value = "manual"
  }

  # Include additional configurations as required
}
