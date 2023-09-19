include {
  path = find_in_parent_folders()
}

terraform {
  source = "../storage_account"
}

dependency "resource_group" {
  config_path = "../resource_group"
}

inputs = {
  resource_group_name = dependency.resource_group.outputs.resource_group_name
  location            = dependency.resource_group.outputs.location
  storage_account_name = "demosc20230919"
}