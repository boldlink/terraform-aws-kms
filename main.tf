
resource "aws_kms_key" "main" {
  description                        = var.description
  key_usage                          = var.key_usage
  customer_master_key_spec           = var.customer_master_key_spec
  policy                             = var.kms_policy
  bypass_policy_lockout_safety_check = var.bypass_policy_lockout_safety_check
  deletion_window_in_days            = var.deletion_window_in_days
  is_enabled                         = var.is_enabled
  enable_key_rotation                = var.enable_key_rotation
  multi_region                       = var.multi_region
  tags                               = var.tags
}

resource "aws_kms_alias" "main" {
  count         = var.create_kms_alias ? 1 : 0
  name          = var.alias_name
  target_key_id = aws_kms_key.main.key_id
}
