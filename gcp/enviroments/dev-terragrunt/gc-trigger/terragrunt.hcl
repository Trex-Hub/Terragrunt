include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../..//base/gc-trigger"
}

locals {
  common_vars = yamldecode(file(find_in_parent_folders("common_vars.yaml")))
}

input {
  region     = "${local.common_vars.region}"
  project_id = "${local.common_vars.project_id}"
  trigger_name = "${local.common_vars.trigger_name}"
  service_account = "projects/${local.common_vars.project_id}/serviceAccounts/${var.service_account}"
  github_repo = "${local.common_vars.github_repo}"
}
