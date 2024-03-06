resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_object" "this" {
  bucket = aws_s3_bucket.this.bucket
  key    = "config/${local.people_filepath}"
  source = local.people_filepath
  etag   = filemd5(local.people_filepath)
}