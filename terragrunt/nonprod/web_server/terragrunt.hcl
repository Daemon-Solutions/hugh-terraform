
include {
    path = find_in_parent_folders()
}

inputs = {
    environment = "nonprod"
}

terraform {
    source = "../../../terraform//web_server"
}