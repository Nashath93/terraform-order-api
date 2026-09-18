moved {
  from = aws_dynamodb_table.orders
  to   = module.dynamodb.aws_dynamodb_table.orders
}