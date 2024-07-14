include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../..//base/gc-trigger"
}

locals {
  common_vars = yamldecode(file(find_in_parent_folders("common_vars.yaml")))
}

input = {
  
}