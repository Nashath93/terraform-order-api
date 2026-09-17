terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}

provider "aws" {
    region = "ap-southeast-2"
}

resource "aws_dynamodb_table" "orders" {
    name = "terraform-orders-lab"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "OrderID"

    attribute {
        name = "OrderID"
        type = "S"
    }

    tags = {
        Project = "TerraformLearning"
        Environment = "Lab"
        Owner = "CloudEngineering"
    }
}