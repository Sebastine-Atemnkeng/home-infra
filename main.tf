locals {
  pm_user = var.pm_user
  pm_pass = var.pm_pass
}

module "argocd" {
  source = "./modules/argocd"

  pm_api_url = "https://your-ip-address:8006/api2/json"
  pm_user    = local.pm_user
  pm_pass    = local.pm_pass

}
