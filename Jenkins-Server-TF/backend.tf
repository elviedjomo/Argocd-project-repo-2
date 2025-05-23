terraform {
  backend "s3" {
    bucket         = "argocdbucketprojet4"
    region         = "us-east-1"
    key            = "LockID"
    dynamodb_table = "Argocdproject-DynamoDB-table"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
