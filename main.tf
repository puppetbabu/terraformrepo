resource "aws_s3_bucket" "remote_state" {
  bucket = "${var.prefix}-remote-statenew-${var.environment}"
  acl    = "authenticated-read"

  versioning {
    enabled = true
  }

  tags {
    Name = "${var.prefix}-remote-statenew-${var.environment}"
    Environment = "${var.environment}"
  }
}
