locals {
  Username = var.postgresqlUsername
  Password = var.postgresqlPassword
  Database = var.postgresqlDatabase
}

resource "helm_release" "my_postgresql" {
  name       = "my-postgresql"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "postgresql"
  version    = "10.3.17"  // Specify the version you wish to use

  set {
    name  = "postgresqlUsername"
    value = local.Username
  }

  set {
    name  = "postgresqlPassword"
    value = local.Password
  }

  set {
    name  = "postgresqlDatabase"
    value = local.Database
  }
}
