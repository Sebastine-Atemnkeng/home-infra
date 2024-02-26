resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "4.5.7" // Specify the version you wish to use

  namespace  = "argocd" // Ensure this namespace is created if it doesn't already exist

  set {
    name  = "server.service.type"
    value = "NodePort" // Example setting, adjust based on your needs
  }
}
