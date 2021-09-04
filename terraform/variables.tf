variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

variable "aws_candidate_develop" {
  description = "The table name of candidate dev ."
}

variable "aws_read_capacity" {
  description = "The read Capacity."
}

variable "aws_write_capacity" {
  description = "The write Capacity."
}

variable "aws_tags_env" {
  description = "The write Capacity."
}

