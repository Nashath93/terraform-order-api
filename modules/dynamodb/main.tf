resource "aws_dynamodb_table" "orders" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "OrderID"

  attribute {
    name = "OrderID"
    type = "S"
  }

  tags = {
    Project     = "TerraformLearning"
    Environment = var.environment
    Owner       = var.owner
  }
}