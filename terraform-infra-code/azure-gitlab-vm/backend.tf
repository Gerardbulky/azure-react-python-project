terraform {
  backend "azurerm" {
    resource_group_name  = "tfstates"
    storage_account_name = "tfstatestorageaccount55"
    container_name       = "tfstates"
    key                  = "End-to-End-Azure-DevSecOps-Kubernetes-Three-Tier-Project/GitLab-VM/terraform.tfstate"
  }
}