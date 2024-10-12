provider "aws" {
    region = "us-east-1"
    profile = "Dev"
}

resource "aws_s3_bucket" "Mycv-Bkt-Rajv" {
    bucket = "bkt-rajv"
}

resource "aws_s3_bucket_acl" "MyCv-Bucket-Acl" {
    bucket = aws_s3_bucket.Mycv-Bkt-Rajv.id
    acl = "public-read"
}

