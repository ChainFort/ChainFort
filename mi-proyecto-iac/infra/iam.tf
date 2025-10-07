# infra/iam.tf

# Grupos con sufijo -terraform
resource "aws_iam_group" "auditors" {
  name = "auditors-terraform"
}

resource "aws_iam_group" "developers" {
  name = "developers-terraform"
}

resource "aws_iam_group" "product_owners" {
  name = "product-owners-terraform"
}

# Políticas de grupos

# Auditors: solo lectura
resource "aws_iam_policy" "auditors_policy" {
  name        = "AuditorsReadOnlyPolicy-terraform"
  description = "Read-only access for auditors"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = [
          "s3:GetObject",
          "s3:ListBucket"
        ]
        Resource = [
          aws_s3_bucket.website_bucket.arn,
          "${aws_s3_bucket.website_bucket.arn}/*"
        ]
      }
    ]
  })
}

# Developers: lectura y escritura solo al bucket
resource "aws_iam_policy" "developers_policy" {
  name        = "DevelopersBucketPolicy-terraform"
  description = "Read/write access to specific S3 bucket"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["s3:*"]
        Resource = [
          aws_s3_bucket.website_bucket.arn,
          "${aws_s3_bucket.website_bucket.arn}/*"
        ]
      }
    ]
  })
}

# Product-owners: permisos limitados
resource "aws_iam_policy" "product_owners_policy" {
  name        = "ProductOwnersLimitedPolicy-terraform"
  description = "Limited management permissions"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = [
          "s3:GetBucketPolicy",
          "s3:GetBucketVersioning",
          "s3:ListBucket"
        ]
        Resource = [
          aws_s3_bucket.website_bucket.arn,
          "${aws_s3_bucket.website_bucket.arn}/*"
        ]
      }
    ]
  })
}

# Attach policies a los grupos
resource "aws_iam_group_policy_attachment" "auditors_attach" {
  group      = aws_iam_group.auditors.name
  policy_arn = aws_iam_policy.auditors_policy.arn
}

resource "aws_iam_group_policy_attachment" "developers_attach" {
  group      = aws_iam_group.developers.name
  policy_arn = aws_iam_policy.developers_policy.arn
}

resource "aws_iam_group_policy_attachment" "product_owners_attach" {
  group      = aws_iam_group.product_owners.name
  policy_arn = aws_iam_policy.product_owners_policy.arn
}
