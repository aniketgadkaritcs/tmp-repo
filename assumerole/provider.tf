provider "aws" {
    region = "us-east-1"
    assume_role {
      role_arn = "arn:aws:iam::382524109485:role/S3AssumeRole"
      session_name = "s3accesss"
    }

}