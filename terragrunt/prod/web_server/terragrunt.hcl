
include {
    path = find_in_parent_folders()
}

inputs = {
    environment = "prod"
}

terraform {
    source = "../../../terraform//web_server"
}