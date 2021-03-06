locals {
  policy = jsonencode({
    Version = "2012-10-17",
    Id      = "key-default-1",
    Statement = [{
      Sid    = "Enable IAM User Permissions",
      Effect = "Allow",
      Principal = {
        AWS = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
      },
      Action   = "kms:*",
      Resource = "*"
      },
      {
        Effect    = "Allow",
        Principal = { "Service" : "logs.${data.aws_region.current.name}.amazonaws.com" },
        Action = [
          "kms:Encrypt*",
          "kms:Decrypt*",
          "kms:ReEncrypt*",
          "kms:GenerateDataKey*",
          "kms:Describe*"
        ],
        Resource = "*"
      }
    ]
  })
}
