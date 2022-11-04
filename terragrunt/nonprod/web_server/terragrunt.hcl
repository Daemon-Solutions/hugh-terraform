
include {
    path = find_in_parent_folders()
}

inputs = {
    environment = "nonprod"
    aws_instance_type="t3.nano"
}

terraform {
    source = "../../../terraform//web_server"
}