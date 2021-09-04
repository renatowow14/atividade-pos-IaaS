provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_dynamodb_table" "candidate-dev" {
  name           = var.aws_candidate_develop
  read_capacity  = var.aws_read_capacity
  write_capacity = var.aws_write_capacity
  hash_key       = "id"
  stream_enabled = true
  stream_view_type = "NEW_IMAGE"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name        = var.aws_candidate_develop
    Environment = var.aws_tags_env
    Terraform   = "yes"
  }
}