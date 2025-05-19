module "s3" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = var.bucket_name

  # ACL
  object_ownership = var.object_ownership

  # Block Public Access
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets

  # Version
  versioning ={ 
    enable = var.enable_version
  }


  # Server-side encryption
  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256" # SSE-S3
      }
      bucket_key_enabled = var.bucket_key_enabled
    }
  }

  # Tags
  tags = merge(var.tags, {
    Name = var.bucket_name
  }, )

}

