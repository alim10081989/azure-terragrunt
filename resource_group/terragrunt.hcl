include {
  path = find_in_parent_folders()
}

terraform {
  source = "../resource_group"
}

inputs = {
  resource_group_name = "demorg-20230919"
  location            = "East US"
}