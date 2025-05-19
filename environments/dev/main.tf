provider "aws" {
  region = var.aws_region
}

# resource "aws_instance" "example" {
#   ami           = var.ami_id
#   instance_type = var.instance_type

#   tags = {
#     Name = "ExampleInstance"
#   }
# }


# module "s3_bucket1" {
#   source = "../../modules/s3"
#   bucket_name="trung-created-by-terraform-1"
#   object_ownership="ObjectWriter"
#   block_public_acls       = false
#   block_public_policy     = false
#   ignore_public_acls   = false
#   restrict_public_buckets = false
#   enable_version=true
#    tags = {
#     Environment = "dev"
#     Project     = "MyTerraformS3"
#   }
# }

# module "s3_bucket2" {
#   source = "../../modules/s3"
#   bucket_name="trung-created-by-terraform-2"
#   object_ownership="ObjectWriter"

#     tags = {
#     Environment = "dev"
#     Project     = "MyTerraformS3"
#   }
# }


module "s3_composite" {
  source="../../modules/s3_composite"
}