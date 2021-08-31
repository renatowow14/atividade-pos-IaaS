provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_dynamodb_table" "candidate-dev" {
  name           = "candidate-dev"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "id"
  stream_enabled = true
  stream_view_type = "NEW_IMAGE"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name        = "candidate-dev"
    Environment = "dev"
    Terraform   = "yes"
  }
}

resource "aws_dynamodb_table" "candidate-email-dev" {
  name           = "candidate-email-dev"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "email"
  stream_enabled = true
  stream_view_type = "NEW_IMAGE"

  attribute {
    name = "email"
    type = "S"
  }

  tags = {
    Name        = "candidate-email-dev"
    Environment = "dev"
    Terraform   = "yes"
  }
}