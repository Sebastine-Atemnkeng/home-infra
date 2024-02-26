locals {
  username = var.auth.username
  password = var.auth.password
  database = var.auth.database
}

resource "helm_release" "my_mongodb" {
  name       = "my-mongodb"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "mongodb"
  version    = "10.8.10"  // Use the desired version

  set {
    name  = "auth.username"
    value = local.username
  }

  set {
    name  = "auth.password"
    value = local.password
  }

  set {
    name  = "auth.database"
    value = local.database
  }
}

