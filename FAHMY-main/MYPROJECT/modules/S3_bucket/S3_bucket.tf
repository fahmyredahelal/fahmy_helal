resource "aws_s3_bucket" "group1_s3_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "group1_s3_bucket"
}
}