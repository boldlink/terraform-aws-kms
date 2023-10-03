provider "aws" {
  region = "eu-west-2"
  alias  = "replica"
}

module "complete_kms" {
  source                  = "./../../"
  description             = "Example complete kms key with IAM user permisions"
  alias_name              = "alias/${var.name}"
  create_kms_alias        = true
  multi_region            = true
  kms_policy              = local.policy
  deletion_window_in_days = var.deletion_window_in_days
  tags                    = var.tags
}

resource "aws_kms_replica_key" "replica" {
  provider                = aws.replica
  description             = "regional replica key for ${var.name}"
  deletion_window_in_days = var.deletion_window_in_days
  primary_key_arn         = module.complete_kms.arn
}

resource "aws_kms_alias" "replica" {
  provider      = aws.replica
  name          = "alias/${var.name}-replica"
  target_key_id = aws_kms_replica_key.replica.key_id
}
