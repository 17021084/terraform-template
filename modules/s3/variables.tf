variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}



variable "enable_version" {
  description = "Enable bucket versioning"
  type        = bool
  default     = false
}



variable "object_ownership" {
  description = "Bucket ownership is BucketOwnerEnforced that means ACLs disabled. otherwise, Bucket ownership is BucketOwnerPreferred or ObjectWriter that means ACLs enabled"
  type        = string
  default     = "BucketOwnerEnforced"
}



variable "block_public_acls" {
  description = "Block Public Access settings for this bucket - block_public_acls"
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Block Public Access settings for this bucket - block_public_policy"
  type        = bool
  default     = true
}

variable "ignore_public_acls" {
  description = "Block Public Access settings for this bucket - ignore_public_acls"
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "Block Public Access settings for this bucket - restrict_public_buckets"
  type        = bool
  default     = true
}

variable "bucket_key_enabled" {
  description = "Whether to enable bucket key for S3 SSE encryption, which reduces encryption costs"
  type        = bool
  default     = false
}
