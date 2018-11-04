variable "region" {
  default     = "us-east-1"
  description = "The AWS region."
}

variable "prefix" {
  default     = "examplecom"
  description = "The name of our org, i.e. examplecom."
}

variable "environment" {
  default     = "development"
  description = "The name of our environment, i.e. development."
}
output "s3_bucket_id" {
  value = "${aws_s3_bucket.remote_state.id}"
}

provider "aws" {
  access_key = "AKIAIKSYTPKWJ3TE3MNA"
  secret_key = "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"
  region     = "${var.region}"
}
