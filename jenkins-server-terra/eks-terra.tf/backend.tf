terraform {
  backend "s3" {
    bucket = "harshbucket-learn"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}
