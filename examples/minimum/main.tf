
module "minimum_kms" {
  source      = "./../../"
  description = "Example minimum kms key"
  deletion_window_in_days = 7
}
