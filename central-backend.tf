terraform {
  backend "s3" {
    bucket = "tfawstfe"
    key = "state/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "statelock"
    
  }
}