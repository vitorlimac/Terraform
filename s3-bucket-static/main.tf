provider "aws" {
    region = "us-east-1"
}

variable "bucket_name" {
    type = string
}

resource "aws_s3_bucket" "static_site_bucket" {
    bucket = "stati_site-${var,bucket_name}"

    website {
        index_document = "index.html"
        error_document = "404.html"
    }

    tags = {
        Name = "stati_site bucket"
        enviroment = "production"
    }


}