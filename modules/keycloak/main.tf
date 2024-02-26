resource "helm_release" "keycloak" {
  name       = "keycloak-service"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "keycloak"
  version    = "18.7.1" # Ensure to check for the latest version
  namespace  = var.namespace

  set {
    name  = "auth.adminUser"
    value = var.adminUser
  }

  set {
    name  = "auth.adminPassword"
    value = var.adminPassword
  }

  set {
    name  = "service.type"
    value = "NodePort"
  }

  set {
    name  = "postgresql.persistence.existingClaim"
    value = "data-keycloak-service-postgresql-0"
  }

  set {
    name  = "persistence.existingClaim"
    value = "keycloak-pvc-local"
  }

  values = [
    <<-EOT
affinity:
  nodeAffinity:
    requiredDuringSchedulingIgnoredDuringExecution:
      nodeSelectorTerms:
        - matchExpressions:
            - key: "kubernetes.io/hostname"
              operator: In
              values:
                - "talos-9ss-3nr"
                - "talos-jwr-2l7"
                - "talos-slw-yoo"
EOT
  ]
}