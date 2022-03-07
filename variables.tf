
variable "description" {
  default     = ""
  description = "The description of the key as viewed in AWS console."
  type        = string
}

variable "key_usage" {
  default     = "ENCRYPT_DECRYPT"
  description = "Specifies the intended use of the key. Valid values: ENCRYPT_DECRYPT or SIGN_VERIFY. Defaults to ENCRYPT_DECRYPT"
  type        = string
}

variable "customer_master_key_spec" {
  default     = "SYMMETRIC_DEFAULT"
  description = "Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: SYMMETRIC_DEFAULT, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, or ECC_SECG_P256K1. Defaults to SYMMETRIC_DEFAULT. "
  type        = string
}

variable "policy" {
  default     = ""
  description = "A valid policy JSON document. Although this is a key policy, not an IAM policy, an aws_iam_policy_document, in the form that designates a principal, can be used"
  type        = string
}

variable "bypass_policy_lockout_safety_check" {
  default     = false
  description = "A flag to indicate whether to bypass the key policy lockout safety check. Setting this value to true increases the risk that the KMS key becomes unmanageable. Do not set this value to true indiscriminately.The default value is false. "
  type        = bool
}

variable "deletion_window_in_days" {
  default     = 30
  description = " The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the KMS key. If you specify a value, it must be between 7 and 30, inclusive. If you do not specify a value, it defaults to 30. If the KMS key is a multi-Region primary key with replicas, the waiting period begins when the last of its replica keys is deleted. Otherwise, the waiting period begins immediately."
  type        = number
}

variable "is_enabled" {
  default     = true
  description = "Specifies whether the key is enabled. Defaults to true."
  type        = bool
}

variable "enable_key_rotation" {
  default     = false
  description = "Specifies whether key rotation is enabled. Defaults to false."
  type        = bool
}

variable "multi_region" {
  default     = false
  description = "Indicates whether the KMS key is a multi-Region (true) or regional (false) key. Defaults to false."
  type        = bool
}

variable "name" {
  description = "Name of the kms key"
  type        = string
}

variable "environment" {
  default     = ""
  description = "Environment tag, e.g prod, test"
  type        = string
}

variable "other_tags" {
  default     = {}
  description = " A map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = map(string)
}

variable "alias_name" {
  default     = ""
  description = "The display name of the alias. The name must start with the word `alias` followed by a forward slash (alias/)"
  type        = string
}
