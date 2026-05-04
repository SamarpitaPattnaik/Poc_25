
terraform {
  backend "s3" {
    bucket         = "my-unique-tf-state-12345"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
  }
}
