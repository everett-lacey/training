
module "virtual_machine" {
  source         = "./compute"
  # instance-count = var.instance-count
  vmname         = "training"
}

# resource "google_storage_bucket" "training-state" {
#   name          = "taos-training-bucket1"
#   location      = "US"
#   force_destroy = true
#   project     = "ev-writes-magnificent-code"
#   bucket_policy_only = true
# }

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ev" # change accordingly

    workspaces {
      name = "training"  # change accordingly
    }
  }
}