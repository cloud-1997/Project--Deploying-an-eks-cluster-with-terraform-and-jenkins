terraform {
  backend "s3" {
    bucket = "harshbucket-learn"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}
