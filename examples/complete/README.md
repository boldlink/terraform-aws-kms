[![License](https://img.shields.io/badge/License-Apache-blue.svg)](https://github.com/boldlink/terraform-aws-kms/blob/main/LICENSE)
[![Latest Release](https://img.shields.io/github/release/boldlink/terraform-aws-kms.svg)](https://github.com/boldlink/terraform-aws-kms/releases/latest)
[![Build Status](https://github.com/boldlink/terraform-aws-kms/actions/workflows/update.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-kms/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-kms/actions/workflows/release.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-kms/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-kms/actions/workflows/pre-commit.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-kms/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-kms/actions/workflows/pr-labeler.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-kms/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-kms/actions/workflows/module-examples-tests.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-kms/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-kms/actions/workflows/checkov.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-kms/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-kms/actions/workflows/auto-merge.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-kms/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-kms/actions/workflows/auto-badge.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-kms/actions)

[<img src="https://avatars.githubusercontent.com/u/25388280?s=200&v=4" width="96"/>](https://boldlink.io)

# Terraform  module example of complete and most common configuration


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=4.15.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.19.0 |
| <a name="provider_aws.replica"></a> [aws.replica](#provider\_aws.replica) | 5.19.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_complete_kms"></a> [complete\_kms](#module\_complete\_kms) | ./../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_kms_alias.replica](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_replica_key.replica](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_replica_key) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_deletion_window_in_days"></a> [deletion\_window\_in\_days](#input\_deletion\_window\_in\_days) | The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the KMS key. If you specify a value, it must be between 7 and 30, inclusive. If you do not specify a value, it defaults to 30. If the KMS key is a multi-Region primary key with replicas, the waiting period begins when the last of its replica keys is deleted. Otherwise, the waiting period begins immediately. | `number` | `7` | no |
| <a name="input_name"></a> [name](#input\_name) | Name to be used in creating kms key alias | `string` | `"complete-kms-example"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to the kms resources | `map(string)` | <pre>{<br>  "Department": "DevOps",<br>  "Environment": "example",<br>  "InstanceScheduler": true,<br>  "LayerId": "cExample",<br>  "LayerName": "cExample",<br>  "Owner": "Boldlink",<br>  "Project": "Examples",<br>  "user::CostCenter": "terraform-registry"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_example"></a> [example](#output\_example) | Example KMS output |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Third party software
This repository uses third party software:
* [pre-commit](https://pre-commit.com/) - Used to help ensure code and documentation consistency
  * Install with `brew install pre-commit`
  * Manually use with `pre-commit run`
* [terraform 0.14.11](https://releases.hashicorp.com/terraform/0.14.11/) For backwards compatibility we are using version 0.14.11 for testing making this the min version tested and without issues with terraform-docs.
* [terraform-docs](https://github.com/segmentio/terraform-docs) - Used to generate the [Inputs](#Inputs) and [Outputs](#Outputs) sections
  * Install with `brew install terraform-docs`
  * Manually use via pre-commit
* [tflint](https://github.com/terraform-linters/tflint) - Used to lint the Terraform code
  * Install with `brew install tflint`
  * Manually use via pre-commit

#### BOLDLink-SIG 2023
