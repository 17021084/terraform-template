module "s3_bucket1" {
source = "terraform-aws-modules/s3-bucket/aws"
  bucket="trung-created-by-terraform-1"
  object_ownership="ObjectWriter"
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls   = false
  restrict_public_buckets = false
  versioning ={ 
    enable = true
  }


  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256" # SSE-S3
      }
      bucket_key_enabled = true
    }
  }

   tags = {
    Environment = "dev"
    Project     = "MyTerraformS3"
  }
}

module "s3_bucket2" {
  source = "terraform-aws-modules/s3-bucket/aws"
  bucket="trung-created-by-terraform-2"
  object_ownership="ObjectWriter"

  tags = {
    Environment = "dev"
    Project     = "MyTerraformS3"
  }
}


module "s3_bucket_3" {
  source = "./s3_module"
  bucket_name="trung-created-by-terraform-3"
  object_ownership="ObjectWriter"
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls   = false
  restrict_public_buckets = false
  enable_version=true
   tags = {
    Environment = "dev"
    Project     = "MyTerraformS3"
  }
}

module "s3_bucket_4" {
  source = "./s3_module"
  bucket_name="trung-created-by-terraform-4"
  object_ownership="ObjectWriter"

    tags = {
    Environment = "dev"
    Project     = "MyTerraformS3"
  }
}