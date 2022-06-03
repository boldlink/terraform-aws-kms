
output "arn" {
  description = "The Amazon Resource Name (ARN) of the key."
  value       = aws_kms_key.main.arn
}

output "key_id" {
  description = " The globally unique identifier for the key."
  value       = aws_kms_key.main.key_id
}

output "target_key_id" {
  description = "Identifier for the key for which the alias is for, can be either an ARN or key_id."
  value       = aws_kms_alias.main.*.target_key_id
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags"
  value       = aws_kms_key.main.tags_all
}
