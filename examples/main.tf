module "kms_key" {
  source              = "./../"
  description         = "A test kms key"
  name                = "example-key"
  alias_name          = "alias/my-key-alias"
  enable_key_rotation = true
}

output "example" {
  value = [
    module.kms_key,
  ]
}
