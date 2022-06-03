
module "complete_kms" {
  source                  = "./../../"
  description             = "Example complete kms key with IAM user permisions"
  alias_name              = "alias/example-key-alias"
  enable_key_rotation     = true
  create_kms_alias        = true
  kms_policy              = local.policy
  deletion_window_in_days = 7
}
