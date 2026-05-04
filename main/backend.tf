
terraform {
  backend "s3" {
    bucket         = "terraform-state-333982363626-ap-south-1-an"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
  }
}
