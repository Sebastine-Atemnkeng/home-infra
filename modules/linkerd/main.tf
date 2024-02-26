resource "helm_release" "linkerd_control_plane" {
  name       = "linkerd-control-plane"
  chart      = "https://helm.linkerd.io/stable/linkerd2"
  version    = "2.10.2"  # Ensure this is the current version you wish to deploy

  # Include additional configurations as needed
}

resource "helm_release" "linkerd_viz" {
  depends_on  = [helm_release.linkerd_control_plane]
  name        = "linkerd-viz"
  chart       = "https://helm.linkerd.io/viz/linkerd-viz"
  version     = "2.10.2"  # Match this version with the Linkerd control plane version

  # Include additional configurations as needed
}
