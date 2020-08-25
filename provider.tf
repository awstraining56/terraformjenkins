provider "aws" {
  region = var.region
}

terraform {
	backend "s3" {
	bucket = "test-terraform-bucket1"
	key = "terraform.tfstate"
	region = "us-east-1"
	}

}